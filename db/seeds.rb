Branch.create!([
  {repo_id: 2, user_id: 2, name: "rafs_branch", last_commit: "2014-10-18 20:01:11"},
  {repo_id: 1, user_id: 1, name: "yes", last_commit: "2014-10-18 20:05:28"},
  {repo_id: 2, user_id: 1, name: "master", last_commit: "2014-10-18 20:24:47"},
  {repo_id: 2, user_id: 3, name: "anthonys_branch", last_commit: "2014-10-18 20:31:59"},
  {repo_id: 2, user_id: 2, name: "rafs_branch", last_commit: "2014-10-18 20:01:11"},
  {repo_id: 1, user_id: 1, name: "yes", last_commit: "2014-10-18 20:05:28"},
  {repo_id: 2, user_id: 1, name: "master", last_commit: "2014-10-18 20:24:47"},
  {repo_id: 2, user_id: 3, name: "anthonys_branch", last_commit: "2014-10-18 20:31:59"}
])
Commit.create!([
  {branch_id: 1, message: "raf test", sha: "d520eaa1bab559426cc87d7779ea3a162abbf72a", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"},
  {branch_id: 2, message: "chris test commit", sha: "bc1878e6ee2677c159fed47fed7010f820ac095e", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"},
  {branch_id: 3, message: "rafs commit", sha: "bccaaf3a304cdc5dfc918b5906e272b3e1199d19", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"},
  {branch_id: 4, message: "made readme again", sha: "a0b4ce06b10326480adce7a1fd3058780b77b1d5", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"},
  {branch_id: 1, message: "raf test", sha: "d520eaa1bab559426cc87d7779ea3a162abbf72a", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"},
  {branch_id: 2, message: "chris test commit", sha: "bc1878e6ee2677c159fed47fed7010f820ac095e", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"},
  {branch_id: 3, message: "rafs commit", sha: "bccaaf3a304cdc5dfc918b5906e272b3e1199d19", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"},
  {branch_id: 4, message: "made readme again", sha: "a0b4ce06b10326480adce7a1fd3058780b77b1d5", full_diff: "  font-style: bold;\n}\n\n#warning-card {\n  background-color: #FFECB6;\n  font-style: bold;\n}\n#warning-card h2 {\n  color: #E0854B;\n  font-style: bold;\n}\n#warning-card:hover{\n\n  font-style: bold;\n  background-color: #FFECB6;\n}\nnav li {\n  padding-left: 30px;"}
])
FileChange.create!([
  {commit_id: 1, file_path: "README.md", action_taken: "M"},
  {commit_id: 1, file_path: "bourbonDemo/extra-file2.txt", action_taken: "A"},
  {commit_id: 2, file_path: "Blah.txt", action_taken: "A"},
  {commit_id: 2, file_path: "README.md", action_taken: "M"},
  {commit_id: 3, file_path: "README.md", action_taken: "M"},
  {commit_id: 3, file_path: "rafsextrafile.txt", action_taken: "A"},
  {commit_id: 4, file_path: "README.md", action_taken: "M"},
  {commit_id: 4, file_path: "rafsextrafile.txt", action_taken: "M"},
  {commit_id: 1, file_path: "README.md", action_taken: "M"},
  {commit_id: 1, file_path: "bourbonDemo/extra-file2.txt", action_taken: "A"},
  {commit_id: 2, file_path: "Blah.txt", action_taken: "A"},
  {commit_id: 2, file_path: "README.md", action_taken: "M"},
  {commit_id: 3, file_path: "README.md", action_taken: "M"},
  {commit_id: 3, file_path: "rafsextrafile.txt", action_taken: "A"},
  {commit_id: 4, file_path: "README.md", action_taken: "M"},
  {commit_id: 4, file_path: "rafsextrafile.txt", action_taken: "M"}
])
Repo.create!([
  {name: "https://github.com/cwallwork/bourbonDemo.git", display_name: "bourbonDemo", last_commit: "2014-10-18 20:05:28"},
  {name: "https://github.com/rafaelrochasilva/bourbonDemo.git", display_name: "bourbonDemo", last_commit: "2014-10-18 20:31:59"},
  {name: "https://github.com/jarmstrng/why-so-serious.git", display_name: "why-so-serious", last_commit: nil},
  {name: "https://github.com/cwallwork/bourbonDemo.git", display_name: "bourbonDemo", last_commit: "2014-10-18 20:05:28"},
  {name: "https://github.com/rafaelrochasilva/bourbonDemo.git", display_name: "bourbonDemo", last_commit: "2014-10-18 20:31:59"},
  {name: "https://github.com/aferragano/aferragano.github.io.git", display_name: "aferragano.github.io", last_commit: nil}
])
TeamProject.create!([
  {repo_id: 1, user_id: 1},
  {repo_id: 1, user_id: 2},
  {repo_id: 1, user_id: 3},
  {repo_id: 3, user_id: 2},
  {repo_id: 1, user_id: 1},
  {repo_id: 1, user_id: 2},
  {repo_id: 1, user_id: 3},
  {repo_id: 6, user_id: 3}
])
User.create!([
  {uid: "7460686", name: "chris wallwork", email: "chris.wallwork@gmail.com", token: "f7f958079651617455dbee353fadd194805c9245", avatar_url: "https://avatars.githubusercontent.com/u/7460686?v=2"},
  {uid: "3337585", name: "Rafael Rocha", email: "rafaelrochasilva@gmail.com", token: "4a3c23c34fd53b599025c069eb14ecf568a2f0b4", avatar_url: "https://avatars.githubusercontent.com/u/3337585?v=2"},
  {uid: "5910855", name: "Anthony F", email: "aferragano@gmail.com", token: "dafbc380834720bfcbd1ac715421d75dd621d75c", avatar_url: "https://avatars.githubusercontent.com/u/5910855?v=2"}
])
