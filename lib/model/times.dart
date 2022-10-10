import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class Times {
  String team;
  String teamScId;
  int row;
  int p;
  int w;
  int d;
  int l;
  int fa1;
  int fa2;
  int pnt;
  Times({
    required this.team,
    required this.teamScId,
    required this.row,
    required this.p,
    required this.w,
    required this.d,
    required this.l,
    required this.fa1,
    required this.fa2,
    required this.pnt,
  });

  Times copyWith({
    String? team,
    String? teamScId,
    int? row,
    int? p,
    int? w,
    int? d,
    int? l,
    int? fa1,
    int? fa2,
    int? pnt,
  }) {
    return Times(
      team: team ?? this.team,
      teamScId: teamScId ?? this.teamScId,
      row: row ?? this.row,
      p: p ?? this.p,
      w: w ?? this.w,
      d: d ?? this.d,
      l: l ?? this.l,
      fa1: fa1 ?? this.fa1,
      fa2: fa2 ?? this.fa2,
      pnt: pnt ?? this.pnt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'team': team,
      'teamScId': teamScId,
      'row': row,
      'p': p,
      'w': w,
      'd': d,
      'l': l,
      'fa1': fa1,
      'fa2': fa2,
      'pnt': pnt,
    };
  }

  factory Times.fromMap(Map<String, dynamic> map) {
    return Times(
      team: map['team'] as String,
      teamScId: map['teamScId'] as String,
      row: map['row'] as int,
      p: map['p'] as int,
      w: map['w'] as int,
      d: map['d'] as int,
      l: map['l'] as int,
      fa1: map['fa1'] as int,
      fa2: map['fa2'] as int,
      pnt: map['pnt'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Times.fromJson(String source) =>
      Times.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Times(team: $team, teamScId: $teamScId, row: $row, p: $p, w: $w, d: $d, l: $l, fa1: $fa1, fa2: $fa2, pnt: $pnt)';
  }
}
