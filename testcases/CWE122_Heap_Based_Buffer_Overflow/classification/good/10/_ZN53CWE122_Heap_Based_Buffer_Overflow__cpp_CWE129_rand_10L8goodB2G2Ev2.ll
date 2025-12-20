@global_var_af970 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc080 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_63c2a:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc080, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.2.reg2mem, align 8
  br i1 %3, label %dec_label_pc_63d54, label %dec_label_pc_63c91

dec_label_pc_63c91:                               ; preds = %dec_label_pc_63c2a
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = call i32 @rand()
  %7 = call i32 @rand()
  %.pr = load i32, ptr @global_var_dc080, align 4
  %8 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.2.reg2mem, align 8
  br i1 %8, label %dec_label_pc_63d54, label %dec_label_pc_63c9f

dec_label_pc_63c9f:                               ; preds = %dec_label_pc_63c91
  %9 = urem i32 %4, 2
  %10 = icmp eq i32 %9, 0
  %11 = mul i32 %5, 1073741824
  %12 = mul i32 %6, 32768
  %13 = xor i32 %12, %11
  %14 = xor i32 %13, %7
  %15 = sext i1 %10 to i32
  %storemerge3.in = xor i32 %14, %15
  %16 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_63cb6

dec_label_pc_63cb6:                               ; preds = %dec_label_pc_63cb6, %dec_label_pc_63c9f
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %17 = mul i64 %indvars.iv7.reload, 4
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i32 0, ptr %19, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_63cda, label %dec_label_pc_63cb6

dec_label_pc_63cda:                               ; preds = %dec_label_pc_63cb6
  %20 = icmp ugt i32 %storemerge3.in, 9
  br i1 %20, label %dec_label_pc_63d32, label %dec_label_pc_63ce6

dec_label_pc_63ce6:                               ; preds = %dec_label_pc_63cda
  %21 = sext i32 %storemerge3.in to i64
  %22 = mul i64 %21, 4
  %23 = add i64 %16, %22
  %24 = inttoptr i64 %23 to ptr
  store i32 1, ptr %24, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_63d09

dec_label_pc_63d09:                               ; preds = %dec_label_pc_63d09, %dec_label_pc_63ce6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %25 = mul i64 %indvars.iv.reload, 4
  %26 = add i64 %25, %16
  %27 = inttoptr i64 %26 to ptr
  %28 = load i32, ptr %27, align 4
  call void @printIntLine(i32 %28)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_63d41, label %dec_label_pc_63d09

dec_label_pc_63d32:                               ; preds = %dec_label_pc_63cda
  call void @printLine(ptr @global_var_af970)
  br label %dec_label_pc_63d41

dec_label_pc_63d41:                               ; preds = %dec_label_pc_63d09, %dec_label_pc_63d32
  %29 = icmp eq i64 %16, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %29, label %dec_label_pc_63d54, label %dec_label_pc_63d48

dec_label_pc_63d48:                               ; preds = %dec_label_pc_63d41
  %30 = inttoptr i64 %16 to ptr
  %31 = and i64 %1, 4294967295
  %32 = inttoptr i64 %31 to ptr
  call void @_ZdaPv(ptr %30, ptr %32)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_63d54

dec_label_pc_63d54:                               ; preds = %dec_label_pc_63c2a, %dec_label_pc_63d48, %dec_label_pc_63d41, %dec_label_pc_63c91
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

