@global_var_a90a8 = external constant [10 x i8]
@global_var_a90b8 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.149() local_unnamed_addr {
dec_label_pc_11a2f:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_11a4d:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-80.1.reg2mem = alloca i32, align 4
  %rsi.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-80.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.149()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_11b5b, label %dec_label_pc_11a81

dec_label_pc_11a81:                               ; preds = %dec_label_pc_11a4d
  %5 = call i32 @socket(i32 2, i32 1, i32 6)
  %6 = icmp eq i32 %5, -1
  store i32 -1, ptr %stack_var_-80.1.reg2mem, align 4
  store i64 1, ptr %rsi.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_11b5b, label %dec_label_pc_11aa9

dec_label_pc_11aa9:                               ; preds = %dec_label_pc_11a81
  %7 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %8 = call i32 @inet_addr(ptr @global_var_a90a8)
  %9 = call i16 @htons(i16 27015)
  %10 = ptrtoint ptr %stack_var_-56 to i64
  %11 = bitcast ptr %stack_var_-56 to ptr
  %12 = call i32 @connect(i32 %5, ptr nonnull %11, i32 16)
  %13 = icmp eq i32 %12, -1
  %14 = icmp eq i1 %13, false
  %15 = icmp eq i1 %14, false
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %10, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %15, label %dec_label_pc_11b51, label %dec_label_pc_11b05

dec_label_pc_11b05:                               ; preds = %dec_label_pc_11aa9
  %16 = ptrtoint ptr %stack_var_-30 to i64
  %17 = call i32 @recv(i32 %5, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %18, 2
  store i32 -1, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %16, ptr %rsi.0.ph.reg2mem, align 8
  br i1 %19, label %dec_label_pc_11b51, label %dec_label_pc_11b2c

dec_label_pc_11b2c:                               ; preds = %dec_label_pc_11b05
  %20 = ptrtoint ptr %stack_var_-8 to i64
  %21 = sext i32 %17 to i64
  %22 = add i64 %20, -22
  %23 = add i64 %22, %21
  %24 = inttoptr i64 %23 to ptr
  store i8 0, ptr %24, align 1
  %25 = bitcast ptr %stack_var_-30 to ptr
  %26 = call i32 @atoi(ptr nonnull %25)
  store i32 %26, ptr %stack_var_-80.0.ph.reg2mem, align 4
  store i64 %16, ptr %rsi.0.ph.reg2mem, align 8
  br label %dec_label_pc_11b51

dec_label_pc_11b51:                               ; preds = %dec_label_pc_11aa9, %dec_label_pc_11b2c, %dec_label_pc_11b05
  %rsi.0.ph.reload = load i64, ptr %rsi.0.ph.reg2mem, align 8
  %stack_var_-80.0.ph.reload = load i32, ptr %stack_var_-80.0.ph.reg2mem, align 4
  %27 = call i32 @close(i32 %5)
  store i32 %stack_var_-80.0.ph.reload, ptr %stack_var_-80.1.reg2mem, align 4
  store i64 %rsi.0.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_11b5b

dec_label_pc_11b5b:                               ; preds = %dec_label_pc_11a81, %dec_label_pc_11b51, %dec_label_pc_11a4d
  %28 = call i32 @staticReturnsTrue.149()
  %29 = icmp eq i32 %28, 0
  %30 = icmp eq i1 %29, false
  %31 = icmp eq i1 %30, false
  br i1 %31, label %dec_label_pc_11c1c, label %dec_label_pc_11b6d

dec_label_pc_11b6d:                               ; preds = %dec_label_pc_11b5b
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-80.1.reload = load i32, ptr %stack_var_-80.1.reg2mem, align 4
  %32 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_11b84

dec_label_pc_11b84:                               ; preds = %dec_label_pc_11b84, %dec_label_pc_11b6d
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %33 = mul i64 %indvars.iv7.reload, 4
  %34 = add i64 %33, %32
  %35 = inttoptr i64 %34 to ptr
  store i32 0, ptr %35, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_11ba8, label %dec_label_pc_11b84

dec_label_pc_11ba8:                               ; preds = %dec_label_pc_11b84
  %36 = icmp slt i32 %stack_var_-80.1.reload, 0
  br i1 %36, label %dec_label_pc_11bfa, label %dec_label_pc_11bae

dec_label_pc_11bae:                               ; preds = %dec_label_pc_11ba8
  %37 = sext i32 %stack_var_-80.1.reload to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %32, %38
  %40 = inttoptr i64 %39 to ptr
  store i32 1, ptr %40, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_11bd1

dec_label_pc_11bd1:                               ; preds = %dec_label_pc_11bd1, %dec_label_pc_11bae
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %41 = mul i64 %indvars.iv.reload, 4
  %42 = add i64 %41, %32
  %43 = inttoptr i64 %42 to ptr
  %44 = load i32, ptr %43, align 4
  call void @printIntLine(i32 %44)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_11c09, label %dec_label_pc_11bd1

dec_label_pc_11bfa:                               ; preds = %dec_label_pc_11ba8
  call void @printLine(ptr @global_var_a90b8)
  br label %dec_label_pc_11c09

dec_label_pc_11c09:                               ; preds = %dec_label_pc_11bd1, %dec_label_pc_11bfa
  %45 = icmp eq i64 %32, 0
  br i1 %45, label %dec_label_pc_11c1c, label %dec_label_pc_11c10

dec_label_pc_11c10:                               ; preds = %dec_label_pc_11c09
  %46 = inttoptr i64 %32 to ptr
  %47 = and i64 %rsi.1.reload, 4294967295
  %48 = inttoptr i64 %47 to ptr
  call void @_ZdaPv(ptr %46, ptr %48)
  br label %dec_label_pc_11c1c

dec_label_pc_11c1c:                               ; preds = %dec_label_pc_11c10, %dec_label_pc_11c09, %dec_label_pc_11b5b
  %49 = call i64 @__readfsqword(i64 40)
  %50 = icmp eq i64 %0, %49
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %50, label %dec_label_pc_11c31, label %dec_label_pc_11c2c

dec_label_pc_11c2c:                               ; preds = %dec_label_pc_11c1c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_11c31

dec_label_pc_11c31:                               ; preds = %dec_label_pc_11c2c, %dec_label_pc_11c1c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

