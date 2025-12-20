@global_var_bc258 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_9348a:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge3.in = xor i32 %10, %11
  %12 = sext i32 %storemerge3.in to i64
  %13 = call ptr @malloc(i32 40)
  %14 = ptrtoint ptr %13 to i64
  %15 = icmp eq ptr %13, null
  %16 = icmp eq i1 %15, false
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br i1 %16, label %dec_label_pc_9352f, label %dec_label_pc_9351c

dec_label_pc_9351c:                               ; preds = %dec_label_pc_9348a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9352f:                               ; preds = %dec_label_pc_9348a, %dec_label_pc_9352f
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %17 = mul i64 %indvars.iv7.reload, 4
  %18 = add i64 %17, %14
  %19 = inttoptr i64 %18 to ptr
  store i32 0, ptr %19, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_93553, label %dec_label_pc_9352f

dec_label_pc_93553:                               ; preds = %dec_label_pc_9352f
  %20 = icmp ugt i32 %storemerge3.in, 9
  br i1 %20, label %dec_label_pc_935ab, label %dec_label_pc_9355f

dec_label_pc_9355f:                               ; preds = %dec_label_pc_93553
  %21 = mul i64 %12, 4
  %22 = add i64 %21, %14
  %23 = inttoptr i64 %22 to ptr
  store i32 1, ptr %23, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_93582

dec_label_pc_93582:                               ; preds = %dec_label_pc_93582, %dec_label_pc_9355f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %24 = mul i64 %indvars.iv.reload, 4
  %25 = add i64 %24, %14
  %26 = inttoptr i64 %25 to ptr
  %27 = load i32, ptr %26, align 4
  call void @printIntLine(i32 %27)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_935ba, label %dec_label_pc_93582

dec_label_pc_935ab:                               ; preds = %dec_label_pc_93553
  call void @printLine(ptr @global_var_bc258)
  br label %dec_label_pc_935ba

dec_label_pc_935ba:                               ; preds = %dec_label_pc_93582, %dec_label_pc_935ab
  call void @free(ptr %13)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %29, label %dec_label_pc_935db, label %dec_label_pc_935d6

dec_label_pc_935d6:                               ; preds = %dec_label_pc_935ba
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_935db

dec_label_pc_935db:                               ; preds = %dec_label_pc_935d6, %dec_label_pc_935ba
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

