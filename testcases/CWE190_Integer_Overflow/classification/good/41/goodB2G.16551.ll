@global_var_89df0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_5594a:
  %0 = icmp eq i16 %data, 32767
  br i1 %0, label %dec_label_pc_55984, label %dec_label_pc_55964

dec_label_pc_55964:                               ; preds = %dec_label_pc_5594a
  %1 = add i16 %data, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_55993

dec_label_pc_55984:                               ; preds = %dec_label_pc_5594a
  call void @printLine(ptr @global_var_89df0)
  br label %dec_label_pc_55993

dec_label_pc_55993:                               ; preds = %dec_label_pc_55984, %dec_label_pc_55964
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_55996:
  call void @anon0(i16 32767)
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

