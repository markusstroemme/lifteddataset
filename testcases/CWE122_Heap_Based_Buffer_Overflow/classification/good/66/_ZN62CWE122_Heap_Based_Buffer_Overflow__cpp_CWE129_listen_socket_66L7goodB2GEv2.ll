@global_var_aee00 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5c74d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_5c891, label %dec_label_pc_5c79e

dec_label_pc_5c79e:                               ; preds = %dec_label_pc_5c74d
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_5c881.thread4, label %dec_label_pc_5c7ef

dec_label_pc_5c7ef:                               ; preds = %dec_label_pc_5c79e
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_5c881.thread4, label %dec_label_pc_5c808

dec_label_pc_5c808:                               ; preds = %dec_label_pc_5c7ef
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_5c881.thread4, label %dec_label_pc_5c825

dec_label_pc_5c825:                               ; preds = %dec_label_pc_5c808
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %dec_label_pc_5c887, label %dec_label_pc_5c84c

dec_label_pc_5c84c:                               ; preds = %dec_label_pc_5c825
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  br label %dec_label_pc_5c887

dec_label_pc_5c881.thread4:                       ; preds = %dec_label_pc_5c808, %dec_label_pc_5c7ef, %dec_label_pc_5c79e
  %26 = call i32 @close(i32 %1)
  br label %dec_label_pc_5c891

dec_label_pc_5c887:                               ; preds = %dec_label_pc_5c84c, %dec_label_pc_5c825
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  br label %dec_label_pc_5c891

dec_label_pc_5c891:                               ; preds = %dec_label_pc_5c74d, %dec_label_pc_5c881.thread4, %dec_label_pc_5c887
  %29 = bitcast ptr %stack_var_-56 to ptr
  %30 = call i64 @anon1(ptr nonnull %29)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %32, label %dec_label_pc_5c8b8, label %dec_label_pc_5c8b3

dec_label_pc_5c8b3:                               ; preds = %dec_label_pc_5c891
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5c8b8

dec_label_pc_5c8b8:                               ; preds = %dec_label_pc_5c8b3, %dec_label_pc_5c891
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_5ca67:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %3 = add i64 %2, 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_5ca98

dec_label_pc_5ca98:                               ; preds = %dec_label_pc_5ca98, %dec_label_pc_5ca67
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_5cabc, label %dec_label_pc_5ca98

dec_label_pc_5cabc:                               ; preds = %dec_label_pc_5ca98
  %10 = icmp ugt i32 %5, 9
  br i1 %10, label %dec_label_pc_5cb14, label %dec_label_pc_5cac8

dec_label_pc_5cac8:                               ; preds = %dec_label_pc_5cabc
  %11 = sext i32 %5 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %6
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5caeb

dec_label_pc_5caeb:                               ; preds = %dec_label_pc_5caeb, %dec_label_pc_5cac8
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5cb23, label %dec_label_pc_5caeb

dec_label_pc_5cb14:                               ; preds = %dec_label_pc_5cabc
  call void @printLine(ptr @global_var_aee00)
  br label %dec_label_pc_5cb23

dec_label_pc_5cb23:                               ; preds = %dec_label_pc_5caeb, %dec_label_pc_5cb14
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_5cb36, label %dec_label_pc_5cb2a

dec_label_pc_5cb2a:                               ; preds = %dec_label_pc_5cb23
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_5cb36

dec_label_pc_5cb36:                               ; preds = %dec_label_pc_5cb2a, %dec_label_pc_5cb23
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

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

