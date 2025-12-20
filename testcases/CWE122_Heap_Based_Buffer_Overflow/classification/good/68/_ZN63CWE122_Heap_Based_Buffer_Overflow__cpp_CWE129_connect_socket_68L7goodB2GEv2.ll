@global_var_a9c54 = external constant [10 x i8]
@global_var_a9c80 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc0dc = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d8c6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-68.03.reg2mem = alloca i32, align 4
  %stack_var_-68.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-68.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1d9c2, label %dec_label_pc_1d910

dec_label_pc_1d910:                               ; preds = %dec_label_pc_1d8c6
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_a9c54)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_1d9b8, label %dec_label_pc_1d96c

dec_label_pc_1d96c:                               ; preds = %dec_label_pc_1d910
  %11 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_1d9b8, label %dec_label_pc_1d993

dec_label_pc_1d993:                               ; preds = %dec_label_pc_1d96c
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_1d9b8

dec_label_pc_1d9b8:                               ; preds = %dec_label_pc_1d910, %dec_label_pc_1d993, %dec_label_pc_1d96c
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_1d9c2

dec_label_pc_1d9c2:                               ; preds = %dec_label_pc_1d8c6, %dec_label_pc_1d9b8
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  store i32 %stack_var_-68.03.reload, ptr @global_var_dc0dc, align 4
  %22 = call i64 @anon1()
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_1d9e5, label %dec_label_pc_1d9e0

dec_label_pc_1d9e0:                               ; preds = %dec_label_pc_1d9c2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d9e5

dec_label_pc_1d9e5:                               ; preds = %dec_label_pc_1d9e0, %dec_label_pc_1d9c2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_1db8a:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc0dc, align 4
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_1dbb6

dec_label_pc_1dbb6:                               ; preds = %dec_label_pc_1dbb6, %dec_label_pc_1db8a
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_1dbda, label %dec_label_pc_1dbb6

dec_label_pc_1dbda:                               ; preds = %dec_label_pc_1dbb6
  %7 = icmp ugt i32 %2, 9
  br i1 %7, label %dec_label_pc_1dc32, label %dec_label_pc_1dbe6

dec_label_pc_1dbe6:                               ; preds = %dec_label_pc_1dbda
  %8 = sext i32 %2 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1dc09

dec_label_pc_1dc09:                               ; preds = %dec_label_pc_1dc09, %dec_label_pc_1dbe6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1dc41, label %dec_label_pc_1dc09

dec_label_pc_1dc32:                               ; preds = %dec_label_pc_1dbda
  call void @printLine(ptr @global_var_a9c80)
  br label %dec_label_pc_1dc41

dec_label_pc_1dc41:                               ; preds = %dec_label_pc_1dc09, %dec_label_pc_1dc32
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_1dc54, label %dec_label_pc_1dc48

dec_label_pc_1dc48:                               ; preds = %dec_label_pc_1dc41
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_1dc54

dec_label_pc_1dc54:                               ; preds = %dec_label_pc_1dc48, %dec_label_pc_1dc41
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

