@global_var_aba38 = external constant [16 x i8]
@global_var_aba48 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_33ae6:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_dc090, align 8
  %3 = bitcast ptr %stack_var_-30 to ptr
  %4 = call ptr @fgets(ptr nonnull %3, i32 14, ptr %2)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_33b5c, label %dec_label_pc_33b48

dec_label_pc_33b48:                               ; preds = %dec_label_pc_33ae6
  %8 = call i32 @atoi(ptr nonnull %3)
  store i32 %8, ptr %1, align 4
  br label %dec_label_pc_33b6b

dec_label_pc_33b5c:                               ; preds = %dec_label_pc_33ae6
  call void @printLine(ptr @global_var_aba38)
  br label %dec_label_pc_33b6b

dec_label_pc_33b6b:                               ; preds = %dec_label_pc_33b5c, %dec_label_pc_33b48
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_33b80, label %dec_label_pc_33b7b

dec_label_pc_33b7b:                               ; preds = %dec_label_pc_33b6b
  call void @__stack_chk_fail()
  br label %dec_label_pc_33b80

dec_label_pc_33b80:                               ; preds = %dec_label_pc_33b7b, %dec_label_pc_33b6b
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_33b82:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_33ba9

dec_label_pc_33ba9:                               ; preds = %dec_label_pc_33ba9, %dec_label_pc_33b82
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %3 = mul i64 %indvars.iv4.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_33bcd, label %dec_label_pc_33ba9

dec_label_pc_33bcd:                               ; preds = %dec_label_pc_33ba9
  %6 = bitcast ptr %rdi to ptr
  %7 = load i32, ptr %6, align 8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_33c26, label %dec_label_pc_33bd7

dec_label_pc_33bd7:                               ; preds = %dec_label_pc_33bcd
  %9 = sext i32 %7 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_33bfd

dec_label_pc_33bfd:                               ; preds = %dec_label_pc_33bfd, %dec_label_pc_33bd7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_33c35, label %dec_label_pc_33bfd

dec_label_pc_33c26:                               ; preds = %dec_label_pc_33bcd
  call void @printLine(ptr @global_var_aba48)
  br label %dec_label_pc_33c35

dec_label_pc_33c35:                               ; preds = %dec_label_pc_33bfd, %dec_label_pc_33c26
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %dec_label_pc_33c48, label %dec_label_pc_33c3c

dec_label_pc_33c3c:                               ; preds = %dec_label_pc_33c35
  %18 = inttoptr i64 %2 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_33c48

dec_label_pc_33c48:                               ; preds = %dec_label_pc_33c3c, %dec_label_pc_33c35
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_33eab:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_33f1e, label %dec_label_pc_33ee8

dec_label_pc_33ee8:                               ; preds = %dec_label_pc_33eab
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_33f1e

dec_label_pc_33f1e:                               ; preds = %dec_label_pc_33ee8, %dec_label_pc_33eab
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

