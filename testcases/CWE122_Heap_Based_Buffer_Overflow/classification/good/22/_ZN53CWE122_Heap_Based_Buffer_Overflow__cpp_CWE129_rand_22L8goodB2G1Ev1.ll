@global_var_afca0 = external constant [21 x i8]
@global_var_afcb8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc1e8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_66a92:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  store i32 0, ptr @global_var_dc1e8, align 4
  %11 = call i64 @anon1(i32 %storemerge.in)
  ret i64 %11
}

define i64 @anon1(i32 %arg1) local_unnamed_addr {
dec_label_pc_66c9c:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc1e8, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_66cc9, label %dec_label_pc_66cb5

dec_label_pc_66cb5:                               ; preds = %dec_label_pc_66c9c
  call void @printLine(ptr @global_var_afca0)
  br label %dec_label_pc_66d7e

dec_label_pc_66cc9:                               ; preds = %dec_label_pc_66c9c
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_66ce0

dec_label_pc_66ce0:                               ; preds = %dec_label_pc_66ce0, %dec_label_pc_66cc9
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_66d04, label %dec_label_pc_66ce0

dec_label_pc_66d04:                               ; preds = %dec_label_pc_66ce0
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_66d5c, label %dec_label_pc_66d10

dec_label_pc_66d10:                               ; preds = %dec_label_pc_66d04
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_66d33

dec_label_pc_66d33:                               ; preds = %dec_label_pc_66d33, %dec_label_pc_66d10
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_66d6b, label %dec_label_pc_66d33

dec_label_pc_66d5c:                               ; preds = %dec_label_pc_66d04
  call void @printLine(ptr @global_var_afcb8)
  br label %dec_label_pc_66d6b

dec_label_pc_66d6b:                               ; preds = %dec_label_pc_66d33, %dec_label_pc_66d5c
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_66d7e, label %dec_label_pc_66d72

dec_label_pc_66d72:                               ; preds = %dec_label_pc_66d6b
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_66d7e

dec_label_pc_66d7e:                               ; preds = %dec_label_pc_66d72, %dec_label_pc_66d6b, %dec_label_pc_66cb5
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

