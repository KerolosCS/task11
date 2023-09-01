// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'backend_dev.dart';
import 'employee.dart';
import 'flutter_dec.dart';
import 'project.dart';
import 'ui_ux.dart';

class Team {
  final String teamName;
  final Employee teamLeader;
  final List<FlutterDeveloper> flutterGroup;
  final List<BackendDevelover> backendGroup;
  final List<UiUXDevelober> uiUxGroup;
  final List<Employee> allTeamDeveloper;
  final List<Project> projects;

  Team({
    required this.teamName,
    required this.teamLeader,
    required this.flutterGroup,
    required this.backendGroup,
    required this.uiUxGroup,
    required this.allTeamDeveloper,
    required this.projects,
  });

  void showNamesFlutterDevelopers() {
    if (flutterGroup.isEmpty) {
      print(' there is no flutter developers');
    } else {
      flutterGroup.forEach((element) {
        print("Name : ${element.name}");
      });
    }
  }

  void showNamesBackendDevelopers() {
    if (backendGroup.isEmpty) {
      print('there is no backend developers');
    } else {
      backendGroup.forEach((element) {
        print("Name : ${element.name}");
      });
    }
  }

  void showNamesUiUxDevelopers() {
    if (uiUxGroup.isEmpty) {
      print('there is no ui/ux developer');
    } else {
      uiUxGroup.forEach((element) {
        print("Name : ${element.name}");
      });
    }
  }

  void showNameAllDevelopers() {
    print("Team Leader : ${teamLeader.name}");
    if (allTeamDeveloper.isEmpty) {
      print(' there is no  developers');
    } else {
      allTeamDeveloper.forEach((element) {
        print("Name : ${element.name}");
      });
    }
  }

  void addEmployeeToTeam(Employee emp) {
    if (emp is FlutterDeveloper) {
      if (flutterGroup.length <= 8) {
        flutterGroup.add(emp);
        allTeamDeveloper.add(emp);
        print('added ${emp.name} to flutter');
      } else {
        print('the flutter group is full');
      }
    } else if (emp is BackendDevelover) {
      if (backendGroup.length <= 5) {
        backendGroup.add(emp);
        allTeamDeveloper.add(emp);
        print('added ${emp.name} to backend');
      } else {
        print('the backend group is full');
      }
    } else if (emp is UiUXDevelober) {
      if (uiUxGroup.length <= 5) {
        uiUxGroup.add(emp);
        allTeamDeveloper.add(emp);
        print('added ${emp.name} to uiUxGroup');
      } else {
        print('the uiUxGroup group is full');
      }
    } else {
      print(
          'can\'t add this employee , the team want just flutter or backend or ui/ui developer');
    }
  }

  void removeEmployeeFromTeam(Employee emp) {
    if (emp is FlutterDeveloper) {
      if (flutterGroup.isEmpty) {
        print('the flutter group is empty');
      } else {
        flutterGroup.remove(emp);
        allTeamDeveloper.remove(emp);
        print('removed ${emp.name} to flutter groub');
      }
    } else if (emp is BackendDevelover) {
      if (backendGroup.length <= 5) {
        print('the backend group is empty');
      } else {
        backendGroup.remove(emp);
        allTeamDeveloper.remove(emp);
        print('removed ${emp.name} to backend');
      }
    } else if (emp is UiUXDevelober) {
      if (uiUxGroup.length <= 5) {
        print('the uiux group is empty');
      } else {
        uiUxGroup.remove(emp);
        allTeamDeveloper.remove(emp);
        print('removed ${emp.name} to uiux groub');
      }
    } else {
      print(
          'This employee cannot be removed, the team only has a Flutter and Backend Developer and a UI/UI Developer');
    }
  }

  void addProject(
    Project project,
    String teamLeaderId,
  ) {
    if (teamLeader.id == teamLeaderId) {
      if (flutterGroup.length >= 2 &&
          backendGroup.length >= 2 &&
          uiUxGroup.isNotEmpty) {
        if (project.deadline.difference(project.receivingDate).inDays > 30) {
          projects.add(project);
        } else {
          print('The team can\'t finish any project before 30 days');
        }
      } else {
        print(
            'this team is not complete , The team must contain at least one ui developer, at least 2 flutter developer, and at least 2 backend developer');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }

  void getAllProjects() {
    projects.forEach((element) {
      print(
        '''
        Title : ${element.title}
        Price : ${element.price}
        receivingDate : ${element.receivingDate}
        deadline: ${element.deadline}
        ''',
      );
    });
  }

  void groupUiFinished(Project project, String teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.uiFinished();
      } else {
        print('this Project is not exist with the team');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }

  void groupFlutterFinished(Project project, String teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.flutterFinished();
      } else {
        print('this Project is not exist with the team');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }

  void groupBackendFinished(Project project, String teamLeaderId) {
    if (teamLeaderId == teamLeader.id) {
      if (projects.contains(project)) {
        project.backendFinished();
      } else {
        print('this Project is not exist with the team');
      }
    } else {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    }
  }
}
