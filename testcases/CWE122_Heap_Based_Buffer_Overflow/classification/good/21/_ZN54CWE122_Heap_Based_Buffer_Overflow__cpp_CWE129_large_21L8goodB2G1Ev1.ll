@global_var_ad510 = external constant [21 x i8]
@global_var_ad528 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc160 = external local_unnamed_addr global i32

define i64 @anon0(i32 %arg1) local_unnamed_addr {
dec_label_pc_45c10:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc160, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_45c3d, label %dec_label_pc_45c29

dec_label_pc_45c29:                               ; preds = %dec_label_pc_45c10
  call void @printLine(ptr @global_var_ad510)
  br label %dec_label_pc_45cf2

dec_label_pc_45c3d:                               ; preds = %dec_label_pc_45c10
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_45c54

dec_label_pc_45c54:                               ; preds = %dec_label_pc_45c54, %dec_label_pc_45c3d
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_45c78, label %dec_label_pc_45c54

dec_label_pc_45c78:                               ; preds = %dec_label_pc_45c54
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_45cd0, label %dec_label_pc_45c84

dec_label_pc_45c84:                               ; preds = %dec_label_pc_45c78
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_45ca7

dec_label_pc_45ca7:                               ; preds = %dec_label_pc_45ca7, %dec_label_pc_45c84
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_45cdf, label %dec_label_pc_45ca7

dec_label_pc_45cd0:                               ; preds = %dec_label_pc_45c78
  call void @printLine(ptr @global_var_ad528)
  br label %dec_label_pc_45cdf

dec_label_pc_45cdf:                               ; preds = %dec_label_pc_45ca7, %dec_label_pc_45cd0
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_45cf2, label %dec_label_pc_45ce6

dec_label_pc_45ce6:                               ; preds = %dec_label_pc_45cdf
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_45cf2

dec_label_pc_45cf2:                               ; preds = %dec_label_pc_45ce6, %dec_label_pc_45cdf, %dec_label_pc_45c29
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_45cf5:
  store i32 0, ptr @global_var_dc160, align 4
  %0 = call i64 @anon0(i32 10)
  ret i64 %0
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

