@global_var_af8b0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.159() local_unnamed_addr {
dec_label_pc_62e4e:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_630e8:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.159()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %5, label %dec_label_pc_63153, label %dec_label_pc_6310a

dec_label_pc_6310a:                               ; preds = %dec_label_pc_630e8
  %6 = call i32 @rand()
  %7 = urem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  %9 = call i32 @rand()
  %10 = mul i32 %9, 1073741824
  %11 = call i32 @rand()
  %12 = mul i32 %11, 32768
  %13 = xor i32 %12, %10
  %14 = call i32 @rand()
  %15 = xor i32 %13, %14
  %16 = sext i1 %8 to i32
  %storemerge3.in = xor i32 %15, %16
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_63153

dec_label_pc_63153:                               ; preds = %dec_label_pc_6310a, %dec_label_pc_630e8
  %17 = call i32 @staticReturnsTrue.159()
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i1 %18, false
  %20 = zext i1 %19 to i64
  %21 = and i32 %17, -256
  %22 = sext i32 %21 to i64
  %23 = or i64 %20, %22
  %24 = icmp eq i1 %19, false
  store i64 %23, ptr %rax.2.reg2mem, align 8
  br i1 %24, label %dec_label_pc_6321a, label %dec_label_pc_63165

dec_label_pc_63165:                               ; preds = %dec_label_pc_63153
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %25 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_6317c

dec_label_pc_6317c:                               ; preds = %dec_label_pc_6317c, %dec_label_pc_63165
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %26 = mul i64 %indvars.iv7.reload, 4
  %27 = add i64 %26, %25
  %28 = inttoptr i64 %27 to ptr
  store i32 0, ptr %28, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_631a0, label %dec_label_pc_6317c

dec_label_pc_631a0:                               ; preds = %dec_label_pc_6317c
  %29 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %29, label %dec_label_pc_631f8, label %dec_label_pc_631ac

dec_label_pc_631ac:                               ; preds = %dec_label_pc_631a0
  %30 = sext i32 %stack_var_-40.0.reload to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %25, %31
  %33 = inttoptr i64 %32 to ptr
  store i32 1, ptr %33, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_631cf

dec_label_pc_631cf:                               ; preds = %dec_label_pc_631cf, %dec_label_pc_631ac
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %34 = mul i64 %indvars.iv.reload, 4
  %35 = add i64 %34, %25
  %36 = inttoptr i64 %35 to ptr
  %37 = load i32, ptr %36, align 4
  call void @printIntLine(i32 %37)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_63207, label %dec_label_pc_631cf

dec_label_pc_631f8:                               ; preds = %dec_label_pc_631a0
  call void @printLine(ptr @global_var_af8b0)
  br label %dec_label_pc_63207

dec_label_pc_63207:                               ; preds = %dec_label_pc_631cf, %dec_label_pc_631f8
  %38 = icmp eq i64 %25, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %38, label %dec_label_pc_6321a, label %dec_label_pc_6320e

dec_label_pc_6320e:                               ; preds = %dec_label_pc_63207
  %39 = inttoptr i64 %25 to ptr
  %40 = and i64 %1, 4294967295
  %41 = inttoptr i64 %40 to ptr
  call void @_ZdaPv(ptr %39, ptr %41)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_6321a

dec_label_pc_6321a:                               ; preds = %dec_label_pc_6320e, %dec_label_pc_63207, %dec_label_pc_63153
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

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

