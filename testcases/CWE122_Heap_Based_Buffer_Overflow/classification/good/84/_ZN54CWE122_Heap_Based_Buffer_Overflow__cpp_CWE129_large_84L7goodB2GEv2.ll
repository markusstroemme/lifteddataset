@global_var_ae1e8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_4c51a:
  %0 = bitcast ptr %result to ptr
  store i32 10, ptr %0, align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4c540:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_4c567

dec_label_pc_4c567:                               ; preds = %dec_label_pc_4c567, %dec_label_pc_4c540
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %3 = mul i64 %indvars.iv4.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_4c58b, label %dec_label_pc_4c567

dec_label_pc_4c58b:                               ; preds = %dec_label_pc_4c567
  %6 = bitcast ptr %rdi to ptr
  %7 = load i32, ptr %6, align 8
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %dec_label_pc_4c5ef, label %dec_label_pc_4c5a0

dec_label_pc_4c5a0:                               ; preds = %dec_label_pc_4c58b
  %9 = sext i32 %7 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4c5c6

dec_label_pc_4c5c6:                               ; preds = %dec_label_pc_4c5c6, %dec_label_pc_4c5a0
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4c5fe, label %dec_label_pc_4c5c6

dec_label_pc_4c5ef:                               ; preds = %dec_label_pc_4c58b
  call void @printLine(ptr @global_var_ae1e8)
  br label %dec_label_pc_4c5fe

dec_label_pc_4c5fe:                               ; preds = %dec_label_pc_4c5c6, %dec_label_pc_4c5ef
  %17 = icmp eq i64 %2, 0
  br i1 %17, label %dec_label_pc_4c611, label %dec_label_pc_4c605

dec_label_pc_4c605:                               ; preds = %dec_label_pc_4c5fe
  %18 = inttoptr i64 %2 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_4c611

dec_label_pc_4c611:                               ; preds = %dec_label_pc_4c605, %dec_label_pc_4c5fe
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_4c7fd:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4c870, label %dec_label_pc_4c83a

dec_label_pc_4c83a:                               ; preds = %dec_label_pc_4c7fd
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4c870

dec_label_pc_4c870:                               ; preds = %dec_label_pc_4c83a, %dec_label_pc_4c7fd
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

