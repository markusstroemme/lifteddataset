@global_var_86510 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_46430:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 2, i32 2147483647
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_46484, label %dec_label_pc_4646f

dec_label_pc_4646f:                               ; preds = %dec_label_pc_46430
  %4 = add nuw i32 %., 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_464b1

dec_label_pc_46484:                               ; preds = %dec_label_pc_46430
  br i1 %1, label %dec_label_pc_4648d, label %dec_label_pc_464a2

dec_label_pc_4648d:                               ; preds = %dec_label_pc_46484
  %5 = add nuw i32 %., 1
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_464b1

dec_label_pc_464a2:                               ; preds = %dec_label_pc_46484
  call void @printLine(ptr @global_var_86510)
  br label %dec_label_pc_464b1

dec_label_pc_464b1:                               ; preds = %dec_label_pc_464a2, %dec_label_pc_4648d, %dec_label_pc_4646f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6ecb9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

