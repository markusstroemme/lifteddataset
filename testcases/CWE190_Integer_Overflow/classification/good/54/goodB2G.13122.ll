@global_var_881d8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_47d09:
  call void @anon0(i32 2147483647)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_47d87:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_47ddb:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_47e2f:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_47e97:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_47ec5, label %dec_label_pc_47eaf

dec_label_pc_47eaf:                               ; preds = %dec_label_pc_47e97
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_47ed4

dec_label_pc_47ec5:                               ; preds = %dec_label_pc_47e97
  call void @printLine(ptr @global_var_881d8)
  br label %dec_label_pc_47ed4

dec_label_pc_47ed4:                               ; preds = %dec_label_pc_47ec5, %dec_label_pc_47eaf
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

