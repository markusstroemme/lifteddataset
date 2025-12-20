@global_var_afd90 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_67894:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge3.in = xor i32 %12, %13
  %14 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_67928

dec_label_pc_67928:                               ; preds = %dec_label_pc_67928, %dec_label_pc_67894
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %15 = mul i64 %indvars.iv7.reload, 4
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_6794c, label %dec_label_pc_67928

dec_label_pc_6794c:                               ; preds = %dec_label_pc_67928
  %18 = icmp ugt i32 %storemerge3.in, 9
  br i1 %18, label %dec_label_pc_679a4, label %dec_label_pc_67958

dec_label_pc_67958:                               ; preds = %dec_label_pc_6794c
  %19 = sext i32 %storemerge3.in to i64
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %14
  %22 = inttoptr i64 %21 to ptr
  store i32 1, ptr %22, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_6797b

dec_label_pc_6797b:                               ; preds = %dec_label_pc_6797b, %dec_label_pc_67958
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %23 = mul i64 %indvars.iv.reload, 4
  %24 = add i64 %23, %14
  %25 = inttoptr i64 %24 to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_679b3, label %dec_label_pc_6797b

dec_label_pc_679a4:                               ; preds = %dec_label_pc_6794c
  call void @printLine(ptr @global_var_afd90)
  br label %dec_label_pc_679b3

dec_label_pc_679b3:                               ; preds = %dec_label_pc_6797b, %dec_label_pc_679a4
  %27 = icmp eq i64 %14, 0
  br i1 %27, label %dec_label_pc_679c6, label %dec_label_pc_679ba

dec_label_pc_679ba:                               ; preds = %dec_label_pc_679b3
  %28 = inttoptr i64 %14 to ptr
  %29 = and i64 %1, 4294967295
  %30 = inttoptr i64 %29 to ptr
  call void @_ZdaPv(ptr %28, ptr %30)
  br label %dec_label_pc_679c6

dec_label_pc_679c6:                               ; preds = %dec_label_pc_679ba, %dec_label_pc_679b3
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %2, %31
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %32, label %dec_label_pc_679db, label %dec_label_pc_679d6

dec_label_pc_679d6:                               ; preds = %dec_label_pc_679c6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_679db

dec_label_pc_679db:                               ; preds = %dec_label_pc_679d6, %dec_label_pc_679c6
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

