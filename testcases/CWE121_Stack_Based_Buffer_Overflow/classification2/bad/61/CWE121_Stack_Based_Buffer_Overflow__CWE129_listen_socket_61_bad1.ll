@global_var_b8218 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3c949:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @anon1(i32 -1)
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %dec_label_pc_3c9d8, label %dec_label_pc_3c9a6

dec_label_pc_3c9a6:                               ; preds = %dec_label_pc_3c949
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, 4
  %6 = add i64 %3, -48
  %7 = add i64 %5, %6
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3c9bc

dec_label_pc_3c9bc:                               ; preds = %dec_label_pc_3c9bc, %dec_label_pc_3c9a6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %9 = mul i64 %indvars.iv.reload, 4
  %10 = add i64 %9, %6
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  call void @printIntLine(i32 %12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3c9e7, label %dec_label_pc_3c9bc

dec_label_pc_3c9d8:                               ; preds = %dec_label_pc_3c949
  call void @printLine(ptr @global_var_b8218)
  br label %dec_label_pc_3c9e7

dec_label_pc_3c9e7:                               ; preds = %dec_label_pc_3c9bc, %dec_label_pc_3c9d8
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_3c9fc, label %dec_label_pc_3c9f7

dec_label_pc_3c9f7:                               ; preds = %dec_label_pc_3c9e7
  call void @__stack_chk_fail()
  br label %dec_label_pc_3c9fc

dec_label_pc_3c9fc:                               ; preds = %dec_label_pc_3c9f7, %dec_label_pc_3c9e7
  ret void
}

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_3cb8d:
  %rax.0.reg2mem = alloca i32, align 4
  %stack_var_-76.036.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 %data, ptr %stack_var_-76.036.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3ccc3, label %dec_label_pc_3cbda

dec_label_pc_3cbda:                               ; preds = %dec_label_pc_3cb8d
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_3ccb3.thread7, label %dec_label_pc_3cc26

dec_label_pc_3cc26:                               ; preds = %dec_label_pc_3cbda
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3ccb3.thread7, label %dec_label_pc_3cc3a

dec_label_pc_3cc3a:                               ; preds = %dec_label_pc_3cc26
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3ccb3.thread7, label %dec_label_pc_3cc57

dec_label_pc_3cc57:                               ; preds = %dec_label_pc_3cc3a
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 %data, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_3ccb9, label %dec_label_pc_3cc7e

dec_label_pc_3cc7e:                               ; preds = %dec_label_pc_3cc57
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3ccb9

dec_label_pc_3ccb3.thread7:                       ; preds = %dec_label_pc_3cc3a, %dec_label_pc_3cc26, %dec_label_pc_3cbda
  %22 = call i32 @close(i32 %1)
  store i32 %data, ptr %stack_var_-76.036.reg2mem, align 4
  br label %dec_label_pc_3ccc3

dec_label_pc_3ccb9:                               ; preds = %dec_label_pc_3cc7e, %dec_label_pc_3cc57
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.036.reg2mem, align 4
  br label %dec_label_pc_3ccc3

dec_label_pc_3ccc3:                               ; preds = %dec_label_pc_3cb8d, %dec_label_pc_3ccb3.thread7, %dec_label_pc_3ccb9
  %stack_var_-76.036.reload = load i32, ptr %stack_var_-76.036.reg2mem, align 4
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  store i32 %stack_var_-76.036.reload, ptr %rax.0.reg2mem, align 4
  br i1 %26, label %dec_label_pc_3ccda, label %dec_label_pc_3ccd5

dec_label_pc_3ccd5:                               ; preds = %dec_label_pc_3ccc3
  call void @__stack_chk_fail()
  store i32 ptrtoint (ptr @0 to i32), ptr %rax.0.reg2mem, align 4
  br label %dec_label_pc_3ccda

dec_label_pc_3ccda:                               ; preds = %dec_label_pc_3ccd5, %dec_label_pc_3ccc3
  %rax.0.reload = load i32, ptr %rax.0.reg2mem, align 4
  ret i32 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

