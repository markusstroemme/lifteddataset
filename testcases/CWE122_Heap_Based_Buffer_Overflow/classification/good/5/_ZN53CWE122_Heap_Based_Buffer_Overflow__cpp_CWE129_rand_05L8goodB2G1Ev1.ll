@global_var_af788 = external constant [21 x i8]
@global_var_af7a0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc050 = external local_unnamed_addr global i32
@global_var_dc1d0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_61f49:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc050, align 4
  %3 = icmp eq i32 %2, 0
  store i32 -1, ptr %stack_var_-40.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_61fb0, label %dec_label_pc_61f67

dec_label_pc_61f67:                               ; preds = %dec_label_pc_61f49
  %4 = call i32 @rand()
  %5 = urem i32 %4, 2
  %6 = icmp eq i32 %5, 0
  %7 = call i32 @rand()
  %8 = mul i32 %7, 1073741824
  %9 = call i32 @rand()
  %10 = mul i32 %9, 32768
  %11 = xor i32 %10, %8
  %12 = call i32 @rand()
  %13 = xor i32 %11, %12
  %14 = sext i1 %6 to i32
  %storemerge3.in = xor i32 %13, %14
  store i32 %storemerge3.in, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_61fb0

dec_label_pc_61fb0:                               ; preds = %dec_label_pc_61f67, %dec_label_pc_61f49
  %15 = load i32, ptr @global_var_dc1d0, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %dec_label_pc_61fce, label %dec_label_pc_61fba

dec_label_pc_61fba:                               ; preds = %dec_label_pc_61fb0
  call void @printLine(ptr @global_var_af788)
  br label %dec_label_pc_62083

dec_label_pc_61fce:                               ; preds = %dec_label_pc_61fb0
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %17 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br label %dec_label_pc_61fe5

dec_label_pc_61fe5:                               ; preds = %dec_label_pc_61fe5, %dec_label_pc_61fce
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %18 = mul i64 %indvars.iv7.reload, 4
  %19 = add i64 %18, %17
  %20 = inttoptr i64 %19 to ptr
  store i32 0, ptr %20, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_62009, label %dec_label_pc_61fe5

dec_label_pc_62009:                               ; preds = %dec_label_pc_61fe5
  %21 = icmp ugt i32 %stack_var_-40.0.reload, 9
  br i1 %21, label %dec_label_pc_62061, label %dec_label_pc_62015

dec_label_pc_62015:                               ; preds = %dec_label_pc_62009
  %22 = sext i32 %stack_var_-40.0.reload to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %17, %23
  %25 = inttoptr i64 %24 to ptr
  store i32 1, ptr %25, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_62038

dec_label_pc_62038:                               ; preds = %dec_label_pc_62038, %dec_label_pc_62015
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %26 = mul i64 %indvars.iv.reload, 4
  %27 = add i64 %26, %17
  %28 = inttoptr i64 %27 to ptr
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_62070, label %dec_label_pc_62038

dec_label_pc_62061:                               ; preds = %dec_label_pc_62009
  call void @printLine(ptr @global_var_af7a0)
  br label %dec_label_pc_62070

dec_label_pc_62070:                               ; preds = %dec_label_pc_62038, %dec_label_pc_62061
  %30 = icmp eq i64 %17, 0
  br i1 %30, label %dec_label_pc_62083, label %dec_label_pc_62077

dec_label_pc_62077:                               ; preds = %dec_label_pc_62070
  %31 = inttoptr i64 %17 to ptr
  %32 = and i64 %1, 4294967295
  %33 = inttoptr i64 %32 to ptr
  call void @_ZdaPv(ptr %31, ptr %33)
  br label %dec_label_pc_62083

dec_label_pc_62083:                               ; preds = %dec_label_pc_62077, %dec_label_pc_62070, %dec_label_pc_61fba
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

