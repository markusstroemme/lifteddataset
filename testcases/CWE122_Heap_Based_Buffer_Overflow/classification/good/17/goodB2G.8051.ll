@global_var_b7d78 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4dd8d:
  %indvars.iv18.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-84.0811.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-84.0811.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4debf, label %dec_label_pc_4ddbc

dec_label_pc_4ddbc:                               ; preds = %dec_label_pc_4dd8d
  %3 = bitcast ptr %stack_var_-56 to ptr
  %4 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = call i32 @bind(i32 %1, ptr nonnull %3, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_4de95.thread12, label %dec_label_pc_4de08

dec_label_pc_4de08:                               ; preds = %dec_label_pc_4ddbc
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4de95.thread12, label %dec_label_pc_4de1c

dec_label_pc_4de1c:                               ; preds = %dec_label_pc_4de08
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4de95.thread12, label %dec_label_pc_4de39

dec_label_pc_4de39:                               ; preds = %dec_label_pc_4de1c
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_4de9b, label %dec_label_pc_4de60

dec_label_pc_4de60:                               ; preds = %dec_label_pc_4de39
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = add i64 %15, -22
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = sext i32 %12 to i64
  %19 = add i64 %16, %18
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  %21 = call i32 @atoi(ptr nonnull %17)
  store i32 %21, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_4de9b

dec_label_pc_4de95.thread12:                      ; preds = %dec_label_pc_4de1c, %dec_label_pc_4de08, %dec_label_pc_4ddbc
  %22 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-84.0811.reg2mem, align 4
  br label %dec_label_pc_4debf

dec_label_pc_4de9b:                               ; preds = %dec_label_pc_4de60, %dec_label_pc_4de39
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.0811.reg2mem, align 4
  br label %dec_label_pc_4debf

dec_label_pc_4debf:                               ; preds = %dec_label_pc_4dd8d, %dec_label_pc_4de95.thread12, %dec_label_pc_4de9b
  %stack_var_-84.0811.reload = load i32, ptr %stack_var_-84.0811.reg2mem, align 4
  %25 = icmp ugt i32 %stack_var_-84.0811.reload, 9
  %26 = sext i32 %stack_var_-84.0811.reload to i64
  %27 = mul i64 %26, 4
  %28 = call ptr @malloc(i32 40)
  %29 = ptrtoint ptr %28 to i64
  %30 = icmp eq ptr %28, null
  %31 = icmp eq i1 %30, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %31, label %dec_label_pc_4dee7, label %dec_label_pc_4ded4

dec_label_pc_4ded4:                               ; preds = %dec_label_pc_4debf
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4dee7:                               ; preds = %dec_label_pc_4debf, %dec_label_pc_4dee7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %32 = mul i64 %indvars.iv.reload, 4
  %33 = add i64 %32, %29
  %34 = inttoptr i64 %33 to ptr
  store i32 0, ptr %34, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4df0b, label %dec_label_pc_4dee7

dec_label_pc_4df0b:                               ; preds = %dec_label_pc_4dee7
  br i1 %25, label %dec_label_pc_4df63, label %dec_label_pc_4df17

dec_label_pc_4df17:                               ; preds = %dec_label_pc_4df0b
  %35 = add i64 %27, %29
  %36 = inttoptr i64 %35 to ptr
  store i32 1, ptr %36, align 4
  store i64 0, ptr %indvars.iv18.reg2mem, align 8
  br label %dec_label_pc_4df3a

dec_label_pc_4df3a:                               ; preds = %dec_label_pc_4df3a, %dec_label_pc_4df17
  %indvars.iv18.reload = load i64, ptr %indvars.iv18.reg2mem, align 8
  %37 = mul i64 %indvars.iv18.reload, 4
  %38 = add i64 %37, %29
  %39 = inttoptr i64 %38 to ptr
  %40 = load i32, ptr %39, align 4
  call void @printIntLine(i32 %40)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18.reload, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 10
  store i64 %indvars.iv.next19, ptr %indvars.iv18.reg2mem, align 8
  br i1 %exitcond20, label %dec_label_pc_4df8c, label %dec_label_pc_4df3a

dec_label_pc_4df63:                               ; preds = %dec_label_pc_4df0b
  call void @printLine(ptr @global_var_b7d78)
  br label %dec_label_pc_4df8c

dec_label_pc_4df8c:                               ; preds = %dec_label_pc_4df3a, %dec_label_pc_4df63
  call void @free(ptr %28)
  %41 = call i64 @__readfsqword(i64 40)
  %42 = icmp eq i64 %0, %41
  br i1 %42, label %dec_label_pc_4dfa1, label %dec_label_pc_4df9c

dec_label_pc_4df9c:                               ; preds = %dec_label_pc_4df8c
  call void @__stack_chk_fail()
  br label %dec_label_pc_4dfa1

dec_label_pc_4dfa1:                               ; preds = %dec_label_pc_4df9c, %dec_label_pc_4df8c
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

