@global_var_87d50 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4623d:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 2, i32 2147483647
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_46292, label %dec_label_pc_4627c

dec_label_pc_4627c:                               ; preds = %dec_label_pc_4623d
  %4 = add nuw i32 %., 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_462c0

dec_label_pc_46292:                               ; preds = %dec_label_pc_4623d
  br i1 %1, label %dec_label_pc_4629b, label %dec_label_pc_462b1

dec_label_pc_4629b:                               ; preds = %dec_label_pc_46292
  %5 = add nuw i32 %., 1
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_462c0

dec_label_pc_462b1:                               ; preds = %dec_label_pc_46292
  call void @printLine(ptr @global_var_87d50)
  br label %dec_label_pc_462c0

dec_label_pc_462c0:                               ; preds = %dec_label_pc_462b1, %dec_label_pc_4629b, %dec_label_pc_4627c
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

