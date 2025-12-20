@global_var_48320 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10402:
  %stack_var_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 5, ptr %stack_var_-28, align 4
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %stack_var_-28. = select i1 %2, ptr %stack_var_-28, ptr null
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_10461, label %dec_label_pc_10452

dec_label_pc_10452:                               ; preds = %dec_label_pc_10402
  %5 = load i32, ptr %stack_var_-28., align 4
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_10486

dec_label_pc_10461:                               ; preds = %dec_label_pc_10402
  %6 = icmp eq ptr %stack_var_-28., null
  br i1 %6, label %dec_label_pc_10477, label %dec_label_pc_10468

dec_label_pc_10468:                               ; preds = %dec_label_pc_10461
  %7 = load i32, ptr %stack_var_-28., align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_10486

dec_label_pc_10477:                               ; preds = %dec_label_pc_10461
  call void @printLine(ptr @global_var_48320)
  br label %dec_label_pc_10486

dec_label_pc_10486:                               ; preds = %dec_label_pc_10477, %dec_label_pc_10468, %dec_label_pc_10452
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1049b, label %dec_label_pc_10496

dec_label_pc_10496:                               ; preds = %dec_label_pc_10486
  call void @__stack_chk_fail()
  br label %dec_label_pc_1049b

dec_label_pc_1049b:                               ; preds = %dec_label_pc_10496, %dec_label_pc_10486
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

