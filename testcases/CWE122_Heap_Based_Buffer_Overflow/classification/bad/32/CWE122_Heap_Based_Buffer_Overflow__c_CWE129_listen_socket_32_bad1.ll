@global_var_b7ef0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4fb20:
  %.reg2mem11 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-104.069.reg2mem = alloca i32, align 4
  %stack_var_-104.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-104.069.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4fc73, label %dec_label_pc_4fb8a

dec_label_pc_4fb8a:                               ; preds = %dec_label_pc_4fb20
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_4fc63.thread10, label %dec_label_pc_4fbd6

dec_label_pc_4fbd6:                               ; preds = %dec_label_pc_4fb8a
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4fc63.thread10, label %dec_label_pc_4fbea

dec_label_pc_4fbea:                               ; preds = %dec_label_pc_4fbd6
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4fc63.thread10, label %dec_label_pc_4fc07

dec_label_pc_4fc07:                               ; preds = %dec_label_pc_4fbea
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  store i32 -1, ptr %stack_var_-104.0.ph.reg2mem, align 4
  store i32 -1, ptr %stack_var_-104.0.ph.reg2mem, align 4
  switch i32 %12, label %dec_label_pc_4fc2e [
    i32 -1, label %dec_label_pc_4fc69
    i32 0, label %dec_label_pc_4fc69
  ]

dec_label_pc_4fc2e:                               ; preds = %dec_label_pc_4fc07
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %12 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %stack_var_-104.0.ph.reg2mem, align 4
  br label %dec_label_pc_4fc69

dec_label_pc_4fc63.thread10:                      ; preds = %dec_label_pc_4fbea, %dec_label_pc_4fbd6, %dec_label_pc_4fb8a
  %20 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-104.069.reg2mem, align 4
  br label %dec_label_pc_4fc73

dec_label_pc_4fc69:                               ; preds = %dec_label_pc_4fc07, %dec_label_pc_4fc07, %dec_label_pc_4fc2e
  %stack_var_-104.0.ph.reload = load i32, ptr %stack_var_-104.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %1)
  %22 = call i32 @close(i32 %10)
  store i32 %stack_var_-104.0.ph.reload, ptr %stack_var_-104.069.reg2mem, align 4
  br label %dec_label_pc_4fc73

dec_label_pc_4fc73:                               ; preds = %dec_label_pc_4fb20, %dec_label_pc_4fc63.thread10, %dec_label_pc_4fc69
  %stack_var_-104.069.reload = load i32, ptr %stack_var_-104.069.reg2mem, align 4
  %23 = call ptr @malloc(i32 40)
  %24 = ptrtoint ptr %23 to i64
  %25 = icmp eq ptr %23, null
  %26 = icmp eq i1 %25, false
  store i64 0, ptr %.reg2mem, align 8
  br i1 %26, label %dec_label_pc_4fcad, label %dec_label_pc_4fc9a

dec_label_pc_4fc9a:                               ; preds = %dec_label_pc_4fc73
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4fcad:                               ; preds = %dec_label_pc_4fc73, %dec_label_pc_4fcad
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext3 = mul i64 %.reload, 4294967296
  %27 = ashr exact i64 %sext3, 30
  %28 = add i64 %27, %24
  %29 = inttoptr i64 %28 to ptr
  store i32 0, ptr %29, align 4
  %30 = add nuw nsw i64 %.reload, 1
  %31 = and i64 %30, 4294967295
  %32 = trunc i64 %30 to i32
  %33 = icmp slt i32 %32, 10
  store i64 %31, ptr %.reg2mem, align 8
  br i1 %33, label %dec_label_pc_4fcad, label %dec_label_pc_4fcd1

dec_label_pc_4fcd1:                               ; preds = %dec_label_pc_4fcad
  %34 = icmp slt i32 %stack_var_-104.069.reload, 0
  br i1 %34, label %dec_label_pc_4fd23, label %dec_label_pc_4fcd7

dec_label_pc_4fcd7:                               ; preds = %dec_label_pc_4fcd1
  %35 = sext i32 %stack_var_-104.069.reload to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %36, %24
  %38 = inttoptr i64 %37 to ptr
  store i32 1, ptr %38, align 4
  store i64 0, ptr %.reg2mem11, align 8
  br label %dec_label_pc_4fcfa

dec_label_pc_4fcfa:                               ; preds = %dec_label_pc_4fcd7, %dec_label_pc_4fcfa
  %.reload12 = load i64, ptr %.reg2mem11, align 8
  %sext2 = mul i64 %.reload12, 4294967296
  %39 = ashr exact i64 %sext2, 30
  %40 = add i64 %39, %24
  %41 = inttoptr i64 %40 to ptr
  %42 = load i32, ptr %41, align 4
  call void @printIntLine(i32 %42)
  %43 = add nuw nsw i64 %.reload12, 1
  %44 = and i64 %43, 4294967295
  %45 = trunc i64 %43 to i32
  %46 = icmp slt i32 %45, 10
  store i64 %44, ptr %.reg2mem11, align 8
  br i1 %46, label %dec_label_pc_4fcfa, label %dec_label_pc_4fd32

dec_label_pc_4fd23:                               ; preds = %dec_label_pc_4fcd1
  call void @printLine(ptr @global_var_b7ef0)
  br label %dec_label_pc_4fd32

dec_label_pc_4fd32:                               ; preds = %dec_label_pc_4fcfa, %dec_label_pc_4fd23
  call void @free(ptr %23)
  %47 = call i64 @__readfsqword(i64 40)
  %48 = icmp eq i64 %0, %47
  br i1 %48, label %dec_label_pc_4fd53, label %dec_label_pc_4fd4e

dec_label_pc_4fd4e:                               ; preds = %dec_label_pc_4fd32
  call void @__stack_chk_fail()
  br label %dec_label_pc_4fd53

dec_label_pc_4fd53:                               ; preds = %dec_label_pc_4fd4e, %dec_label_pc_4fd32
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

