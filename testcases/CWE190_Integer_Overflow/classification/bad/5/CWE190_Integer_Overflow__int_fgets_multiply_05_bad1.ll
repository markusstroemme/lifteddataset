@global_var_80fe8 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8010 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a756:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_b8010, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_a7f6, label %dec_label_pc_a782

dec_label_pc_a782:                                ; preds = %dec_label_pc_a756
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_a7c5, label %dec_label_pc_a7d4

dec_label_pc_a7c5:                                ; preds = %dec_label_pc_a782
  call void @printLine(ptr @global_var_80fe8)
  br label %dec_label_pc_a7f6

dec_label_pc_a7d4:                                ; preds = %dec_label_pc_a782
  %7 = call i32 @atoi(ptr nonnull %4)
  %8 = load i32, ptr @global_var_b8010, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp slt i32 %7, 1
  %or.cond = or i1 %10, %9
  br i1 %or.cond, label %dec_label_pc_a7f6, label %dec_label_pc_a7e4

dec_label_pc_a7e4:                                ; preds = %dec_label_pc_a7d4
  %11 = mul i32 %7, 2
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_a7f6

dec_label_pc_a7f6:                                ; preds = %dec_label_pc_a7c5, %dec_label_pc_a756, %dec_label_pc_a7e4, %dec_label_pc_a7d4
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_a80b, label %dec_label_pc_a806

dec_label_pc_a806:                                ; preds = %dec_label_pc_a7f6
  call void @__stack_chk_fail()
  br label %dec_label_pc_a80b

dec_label_pc_a80b:                                ; preds = %dec_label_pc_a806, %dec_label_pc_a7f6
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

