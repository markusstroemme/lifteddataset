@global_var_b7ec8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4f8e5:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv13.reg2mem = alloca i64, align 8
  %stack_var_-92.069.reg2mem = alloca i32, align 4
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-92.069.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4fa1f, label %dec_label_pc_4f936

dec_label_pc_4f936:                               ; preds = %dec_label_pc_4f8e5
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_4fa0f.thread10, label %dec_label_pc_4f982

dec_label_pc_4f982:                               ; preds = %dec_label_pc_4f936
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4fa0f.thread10, label %dec_label_pc_4f996

dec_label_pc_4f996:                               ; preds = %dec_label_pc_4f982
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4fa0f.thread10, label %dec_label_pc_4f9b3

dec_label_pc_4f9b3:                               ; preds = %dec_label_pc_4f996
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_4fa15, label %dec_label_pc_4f9da

dec_label_pc_4f9da:                               ; preds = %dec_label_pc_4f9b3
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_4fa15

dec_label_pc_4fa0f.thread10:                      ; preds = %dec_label_pc_4f996, %dec_label_pc_4f982, %dec_label_pc_4f936
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-92.069.reg2mem, align 4
  br label %dec_label_pc_4fa1f

dec_label_pc_4fa15:                               ; preds = %dec_label_pc_4f9da, %dec_label_pc_4f9b3
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.069.reg2mem, align 4
  br label %dec_label_pc_4fa1f

dec_label_pc_4fa1f:                               ; preds = %dec_label_pc_4f8e5, %dec_label_pc_4fa0f.thread10, %dec_label_pc_4fa15
  %stack_var_-92.069.reload = load i32, ptr %stack_var_-92.069.reg2mem, align 4
  %25 = call ptr @malloc(i32 40)
  %26 = ptrtoint ptr %25 to i64
  %27 = icmp eq ptr %25, null
  %28 = icmp eq i1 %27, false
  store i64 0, ptr %indvars.iv13.reg2mem, align 8
  br i1 %28, label %dec_label_pc_4fa53, label %dec_label_pc_4fa40

dec_label_pc_4fa40:                               ; preds = %dec_label_pc_4fa1f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4fa53:                               ; preds = %dec_label_pc_4fa1f, %dec_label_pc_4fa53
  %indvars.iv13.reload = load i64, ptr %indvars.iv13.reg2mem, align 8
  %29 = mul i64 %indvars.iv13.reload, 4
  %30 = add i64 %29, %26
  %31 = inttoptr i64 %30 to ptr
  store i32 0, ptr %31, align 4
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13.reload, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 10
  store i64 %indvars.iv.next14, ptr %indvars.iv13.reg2mem, align 8
  br i1 %exitcond15, label %dec_label_pc_4fa77, label %dec_label_pc_4fa53

dec_label_pc_4fa77:                               ; preds = %dec_label_pc_4fa53
  %32 = icmp ugt i32 %stack_var_-92.069.reload, 9
  br i1 %32, label %dec_label_pc_4facf, label %dec_label_pc_4fa83

dec_label_pc_4fa83:                               ; preds = %dec_label_pc_4fa77
  %33 = sext i32 %stack_var_-92.069.reload to i64
  %34 = mul i64 %33, 4
  %35 = add i64 %34, %26
  %36 = inttoptr i64 %35 to ptr
  store i32 1, ptr %36, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4faa6

dec_label_pc_4faa6:                               ; preds = %dec_label_pc_4faa6, %dec_label_pc_4fa83
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %37 = mul i64 %indvars.iv.reload, 4
  %38 = add i64 %37, %26
  %39 = inttoptr i64 %38 to ptr
  %40 = load i32, ptr %39, align 4
  call void @printIntLine(i32 %40)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4fade, label %dec_label_pc_4faa6

dec_label_pc_4facf:                               ; preds = %dec_label_pc_4fa77
  call void @printLine(ptr @global_var_b7ec8)
  br label %dec_label_pc_4fade

dec_label_pc_4fade:                               ; preds = %dec_label_pc_4faa6, %dec_label_pc_4facf
  call void @free(ptr %25)
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %0, %41
  br i1 %42, label %dec_label_pc_4faff, label %dec_label_pc_4fafa

dec_label_pc_4fafa:                               ; preds = %dec_label_pc_4fade
  call void @__stack_chk_fail()
  br label %dec_label_pc_4faff

dec_label_pc_4faff:                               ; preds = %dec_label_pc_4fafa, %dec_label_pc_4fade
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

