@global_var_88558 = external constant [16 x i8]
@global_var_88568 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_575ac:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_57616, label %dec_label_pc_57602

dec_label_pc_57602:                               ; preds = %dec_label_pc_575ac
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %arg1, align 4
  br label %dec_label_pc_57625

dec_label_pc_57616:                               ; preds = %dec_label_pc_575ac
  call void @printLine(ptr @global_var_88558)
  br label %dec_label_pc_57625

dec_label_pc_57625:                               ; preds = %dec_label_pc_57616, %dec_label_pc_57602
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_5763a, label %dec_label_pc_57635

dec_label_pc_57635:                               ; preds = %dec_label_pc_57625
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5763a

dec_label_pc_5763a:                               ; preds = %dec_label_pc_57635, %dec_label_pc_57625
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_5763c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, -2147483648
  br i1 %3, label %dec_label_pc_576a0, label %dec_label_pc_57674

dec_label_pc_57674:                               ; preds = %dec_label_pc_5763c
  %4 = sub i32 0, %2
  %5 = icmp slt i32 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = select i1 %6, i32 %4, i32 %2
  %8 = icmp sgt i32 %7, 46339
  br i1 %8, label %dec_label_pc_576a0, label %dec_label_pc_57688

dec_label_pc_57688:                               ; preds = %dec_label_pc_57674
  %9 = mul i32 %2, %2
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_576af

dec_label_pc_576a0:                               ; preds = %dec_label_pc_57674, %dec_label_pc_5763c
  call void @printLine(ptr @global_var_88568)
  br label %dec_label_pc_576af

dec_label_pc_576af:                               ; preds = %dec_label_pc_576a0, %dec_label_pc_57688
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_576c4, label %dec_label_pc_576bf

dec_label_pc_576bf:                               ; preds = %dec_label_pc_576af
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_576c4

dec_label_pc_576c4:                               ; preds = %dec_label_pc_576bf, %dec_label_pc_576af
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

