@global_var_b7b60 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4aac3:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv10.reg2mem = alloca i64, align 8
  %stack_var_-84.1.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4ac0f, label %dec_label_pc_4aaf7

dec_label_pc_4aaf7:                               ; preds = %dec_label_pc_4aac3
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_4ac0f, label %dec_label_pc_4ab26

dec_label_pc_4ab26:                               ; preds = %dec_label_pc_4aaf7
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %7 = bitcast ptr %stack_var_-56 to ptr
  %8 = call i32 @bind(i32 %3, ptr nonnull %7, i32 16)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4abff.thread7, label %dec_label_pc_4ab72

dec_label_pc_4ab72:                               ; preds = %dec_label_pc_4ab26
  %10 = call i32 @listen(i32 %3, i32 5)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4abff.thread7, label %dec_label_pc_4ab86

dec_label_pc_4ab86:                               ; preds = %dec_label_pc_4ab72
  %12 = call i32 @accept(i32 %3, ptr null, ptr null)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %dec_label_pc_4abff.thread7, label %dec_label_pc_4aba3

dec_label_pc_4aba3:                               ; preds = %dec_label_pc_4ab86
  %14 = call i32 @recv(i32 %12, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %15 = add i32 %14, 1
  %16 = icmp ult i32 %15, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %16, label %dec_label_pc_4ac05, label %dec_label_pc_4abca

dec_label_pc_4abca:                               ; preds = %dec_label_pc_4aba3
  %17 = ptrtoint ptr %stack_var_-8 to i64
  %18 = sext i32 %14 to i64
  %19 = add i64 %17, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_4ac05

dec_label_pc_4abff.thread7:                       ; preds = %dec_label_pc_4ab86, %dec_label_pc_4ab72, %dec_label_pc_4ab26
  %24 = call i32 @close(i32 %3)
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br label %dec_label_pc_4ac0f

dec_label_pc_4ac05:                               ; preds = %dec_label_pc_4abca, %dec_label_pc_4aba3
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %3)
  %26 = call i32 @close(i32 %12)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.1.reg2mem, align 4
  br label %dec_label_pc_4ac0f

dec_label_pc_4ac0f:                               ; preds = %dec_label_pc_4aaf7, %dec_label_pc_4abff.thread7, %dec_label_pc_4ac05, %dec_label_pc_4aac3
  %27 = call i32 @globalReturnsTrue()
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %dec_label_pc_4acda, label %dec_label_pc_4ac21

dec_label_pc_4ac21:                               ; preds = %dec_label_pc_4ac0f
  %stack_var_-84.1.reload = load i32, ptr %stack_var_-84.1.reg2mem, align 4
  %29 = call ptr @malloc(i32 40)
  %30 = ptrtoint ptr %29 to i64
  %31 = icmp eq ptr %29, null
  %32 = icmp eq i1 %31, false
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br i1 %32, label %dec_label_pc_4ac49, label %dec_label_pc_4ac36

dec_label_pc_4ac36:                               ; preds = %dec_label_pc_4ac21
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4ac49:                               ; preds = %dec_label_pc_4ac21, %dec_label_pc_4ac49
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %33 = mul i64 %indvars.iv10.reload, 4
  %34 = add i64 %33, %30
  %35 = inttoptr i64 %34 to ptr
  store i32 0, ptr %35, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_4ac6d, label %dec_label_pc_4ac49

dec_label_pc_4ac6d:                               ; preds = %dec_label_pc_4ac49
  %36 = icmp slt i32 %stack_var_-84.1.reload, 0
  br i1 %36, label %dec_label_pc_4acbf, label %dec_label_pc_4ac73

dec_label_pc_4ac73:                               ; preds = %dec_label_pc_4ac6d
  %37 = sext i32 %stack_var_-84.1.reload to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %38, %30
  %40 = inttoptr i64 %39 to ptr
  store i32 1, ptr %40, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4ac96

dec_label_pc_4ac96:                               ; preds = %dec_label_pc_4ac96, %dec_label_pc_4ac73
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %41 = mul i64 %indvars.iv.reload, 4
  %42 = add i64 %41, %30
  %43 = inttoptr i64 %42 to ptr
  %44 = load i32, ptr %43, align 4
  call void @printIntLine(i32 %44)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4acce, label %dec_label_pc_4ac96

dec_label_pc_4acbf:                               ; preds = %dec_label_pc_4ac6d
  call void @printLine(ptr @global_var_b7b60)
  br label %dec_label_pc_4acce

dec_label_pc_4acce:                               ; preds = %dec_label_pc_4ac96, %dec_label_pc_4acbf
  call void @free(ptr %29)
  br label %dec_label_pc_4acda

dec_label_pc_4acda:                               ; preds = %dec_label_pc_4acce, %dec_label_pc_4ac0f
  %45 = call i64 @__readfsqword(i64 40)
  %46 = icmp eq i64 %0, %45
  br i1 %46, label %dec_label_pc_4acef, label %dec_label_pc_4acea

dec_label_pc_4acea:                               ; preds = %dec_label_pc_4acda
  call void @__stack_chk_fail()
  br label %dec_label_pc_4acef

dec_label_pc_4acef:                               ; preds = %dec_label_pc_4acea, %dec_label_pc_4acda
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a039c:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

