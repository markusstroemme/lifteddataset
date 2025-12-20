@global_var_b01f0 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6b123:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i64 @anon1(ptr nonnull %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_6b1b6, label %dec_label_pc_6b1b1

dec_label_pc_6b1b1:                               ; preds = %dec_label_pc_6b123
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6b1b6

dec_label_pc_6b1b6:                               ; preds = %dec_label_pc_6b1b1, %dec_label_pc_6b123
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_6b2bc:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %3 = add i64 %2, 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_6b2ed

dec_label_pc_6b2ed:                               ; preds = %dec_label_pc_6b2ed, %dec_label_pc_6b2bc
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %7 = mul i64 %indvars.iv4.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_6b311, label %dec_label_pc_6b2ed

dec_label_pc_6b311:                               ; preds = %dec_label_pc_6b2ed
  %10 = icmp slt i32 %5, 0
  br i1 %10, label %dec_label_pc_6b363, label %dec_label_pc_6b317

dec_label_pc_6b317:                               ; preds = %dec_label_pc_6b311
  %11 = sext i32 %5 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %6
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_6b33a

dec_label_pc_6b33a:                               ; preds = %dec_label_pc_6b33a, %dec_label_pc_6b317
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6b372, label %dec_label_pc_6b33a

dec_label_pc_6b363:                               ; preds = %dec_label_pc_6b311
  call void @printLine(ptr @global_var_b01f0)
  br label %dec_label_pc_6b372

dec_label_pc_6b372:                               ; preds = %dec_label_pc_6b33a, %dec_label_pc_6b363
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_6b385, label %dec_label_pc_6b379

dec_label_pc_6b379:                               ; preds = %dec_label_pc_6b372
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_6b385

dec_label_pc_6b385:                               ; preds = %dec_label_pc_6b379, %dec_label_pc_6b372
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

