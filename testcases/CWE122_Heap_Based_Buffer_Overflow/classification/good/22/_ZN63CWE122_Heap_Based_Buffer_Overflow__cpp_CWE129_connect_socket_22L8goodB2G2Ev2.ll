@global_var_a9564 = external constant [10 x i8]
@global_var_a95a8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc0c0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_16f1d:
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
  br i1 %2, label %dec_label_pc_17019, label %dec_label_pc_16f67

dec_label_pc_16f67:                               ; preds = %dec_label_pc_16f1d
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_a9564)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  %9 = icmp eq i1 %8, false
  %10 = icmp eq i1 %9, false
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_1700f, label %dec_label_pc_16fc3

dec_label_pc_16fc3:                               ; preds = %dec_label_pc_16f67
  %11 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_1700f, label %dec_label_pc_16fea

dec_label_pc_16fea:                               ; preds = %dec_label_pc_16fc3
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_1700f

dec_label_pc_1700f:                               ; preds = %dec_label_pc_16f67, %dec_label_pc_16fea, %dec_label_pc_16fc3
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_17019

dec_label_pc_17019:                               ; preds = %dec_label_pc_16f1d, %dec_label_pc_1700f
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  store i32 1, ptr @global_var_dc0c0, align 4
  %22 = call i64 @anon1(i32 %stack_var_-68.03.reload)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_17042, label %dec_label_pc_1703d

dec_label_pc_1703d:                               ; preds = %dec_label_pc_17019
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_17042

dec_label_pc_17042:                               ; preds = %dec_label_pc_1703d, %dec_label_pc_17019
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i32 %arg1) local_unnamed_addr {
dec_label_pc_17243:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc0c0, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.2.reg2mem, align 8
  br i1 %3, label %dec_label_pc_17315, label %dec_label_pc_17260

dec_label_pc_17260:                               ; preds = %dec_label_pc_17243
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_17277

dec_label_pc_17277:                               ; preds = %dec_label_pc_17277, %dec_label_pc_17260
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1729b, label %dec_label_pc_17277

dec_label_pc_1729b:                               ; preds = %dec_label_pc_17277
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_172f3, label %dec_label_pc_172a7

dec_label_pc_172a7:                               ; preds = %dec_label_pc_1729b
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_172ca

dec_label_pc_172ca:                               ; preds = %dec_label_pc_172ca, %dec_label_pc_172a7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_17302, label %dec_label_pc_172ca

dec_label_pc_172f3:                               ; preds = %dec_label_pc_1729b
  call void @printLine(ptr @global_var_a95a8)
  br label %dec_label_pc_17302

dec_label_pc_17302:                               ; preds = %dec_label_pc_172ca, %dec_label_pc_172f3
  %17 = icmp eq i64 %4, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %17, label %dec_label_pc_17315, label %dec_label_pc_17309

dec_label_pc_17309:                               ; preds = %dec_label_pc_17302
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_17315

dec_label_pc_17315:                               ; preds = %dec_label_pc_17309, %dec_label_pc_17302, %dec_label_pc_17243
  %rax.2.reload = load i64, ptr %rax.2.reg2mem, align 8
  ret i64 %rax.2.reload
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

