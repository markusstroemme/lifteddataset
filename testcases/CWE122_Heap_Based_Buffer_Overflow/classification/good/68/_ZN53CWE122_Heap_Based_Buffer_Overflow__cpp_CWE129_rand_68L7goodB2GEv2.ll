@global_var_b02a0 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc208 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_6b9b1:
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
  store i32 %storemerge.in, ptr @global_var_dc208, align 4
  %11 = call i64 @anon1()
  ret i64 %11
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_6bbc6:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc208, align 4
  %3 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_6bbf2

dec_label_pc_6bbf2:                               ; preds = %dec_label_pc_6bbf2, %dec_label_pc_6bbc6
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_6bc16, label %dec_label_pc_6bbf2

dec_label_pc_6bc16:                               ; preds = %dec_label_pc_6bbf2
  %7 = icmp ugt i32 %2, 9
  br i1 %7, label %dec_label_pc_6bc6e, label %dec_label_pc_6bc22

dec_label_pc_6bc22:                               ; preds = %dec_label_pc_6bc16
  %8 = sext i32 %2 to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %3
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_6bc45

dec_label_pc_6bc45:                               ; preds = %dec_label_pc_6bc45, %dec_label_pc_6bc22
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %3
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_6bc7d, label %dec_label_pc_6bc45

dec_label_pc_6bc6e:                               ; preds = %dec_label_pc_6bc16
  call void @printLine(ptr @global_var_b02a0)
  br label %dec_label_pc_6bc7d

dec_label_pc_6bc7d:                               ; preds = %dec_label_pc_6bc45, %dec_label_pc_6bc6e
  %16 = icmp eq i64 %3, 0
  br i1 %16, label %dec_label_pc_6bc90, label %dec_label_pc_6bc84

dec_label_pc_6bc84:                               ; preds = %dec_label_pc_6bc7d
  %17 = inttoptr i64 %3 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_6bc90

dec_label_pc_6bc90:                               ; preds = %dec_label_pc_6bc84, %dec_label_pc_6bc7d
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

