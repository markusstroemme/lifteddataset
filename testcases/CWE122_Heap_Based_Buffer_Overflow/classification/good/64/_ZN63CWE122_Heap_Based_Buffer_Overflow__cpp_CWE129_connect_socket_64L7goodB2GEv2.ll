@global_var_a9b14 = external constant [10 x i8]
@global_var_a9b40 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c4c3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-68 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-68, align 4
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_1c5bf, label %dec_label_pc_1c50d

dec_label_pc_1c50d:                               ; preds = %dec_label_pc_1c4c3
  %2 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %3 = call i32 @inet_addr(ptr @global_var_a9b14)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_1c5b5, label %dec_label_pc_1c569

dec_label_pc_1c569:                               ; preds = %dec_label_pc_1c50d
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_1c5b5, label %dec_label_pc_1c590

dec_label_pc_1c590:                               ; preds = %dec_label_pc_1c569
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -22
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-30 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %stack_var_-68, align 4
  br label %dec_label_pc_1c5b5

dec_label_pc_1c5b5:                               ; preds = %dec_label_pc_1c569, %dec_label_pc_1c590, %dec_label_pc_1c50d
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_1c5bf

dec_label_pc_1c5bf:                               ; preds = %dec_label_pc_1c4c3, %dec_label_pc_1c5b5
  %21 = bitcast ptr %stack_var_-68 to ptr
  %22 = call i64 @anon1(ptr nonnull %21)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_1c5e0, label %dec_label_pc_1c5db

dec_label_pc_1c5db:                               ; preds = %dec_label_pc_1c5bf
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c5e0

dec_label_pc_1c5e0:                               ; preds = %dec_label_pc_1c5db, %dec_label_pc_1c5bf
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_1c79d:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i64, ptr %0, align 8
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_1c7d5

dec_label_pc_1c7d5:                               ; preds = %dec_label_pc_1c7d5, %dec_label_pc_1c79d
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %4 = mul i64 %indvars.iv5.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1c7f9, label %dec_label_pc_1c7d5

dec_label_pc_1c7f9:                               ; preds = %dec_label_pc_1c7d5
  %7 = trunc i64 %1 to i32
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %dec_label_pc_1c851, label %dec_label_pc_1c805

dec_label_pc_1c805:                               ; preds = %dec_label_pc_1c7f9
  %sext = mul i64 %1, 4294967296
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %3, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1c828

dec_label_pc_1c828:                               ; preds = %dec_label_pc_1c828, %dec_label_pc_1c805
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1c860, label %dec_label_pc_1c828

dec_label_pc_1c851:                               ; preds = %dec_label_pc_1c7f9
  call void @printLine(ptr @global_var_a9b40)
  br label %dec_label_pc_1c860

dec_label_pc_1c860:                               ; preds = %dec_label_pc_1c828, %dec_label_pc_1c851
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_1c873, label %dec_label_pc_1c867

dec_label_pc_1c867:                               ; preds = %dec_label_pc_1c860
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %2, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_1c873

dec_label_pc_1c873:                               ; preds = %dec_label_pc_1c867, %dec_label_pc_1c860
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

