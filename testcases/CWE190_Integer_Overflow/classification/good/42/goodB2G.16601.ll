@global_var_89e28 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define i16 @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_55a93:
  ret i16 32767
}

define void @anon1() local_unnamed_addr {
dec_label_pc_55aad:
  %0 = call i16 @anon0(i16 0)
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_55af6, label %dec_label_pc_55ad6

dec_label_pc_55ad6:                               ; preds = %dec_label_pc_55aad
  %2 = zext i16 %0 to i32
  %3 = mul i32 %2, 65536
  %sext = add i32 %3, 65536
  %4 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_55b05

dec_label_pc_55af6:                               ; preds = %dec_label_pc_55aad
  call void @printLine(ptr @global_var_89e28)
  br label %dec_label_pc_55b05

dec_label_pc_55b05:                               ; preds = %dec_label_pc_55af6, %dec_label_pc_55ad6
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

