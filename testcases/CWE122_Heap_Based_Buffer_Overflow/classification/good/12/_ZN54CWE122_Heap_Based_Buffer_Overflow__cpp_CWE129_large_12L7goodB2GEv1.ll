@global_var_ad2e8 = external constant [36 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_441bd:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv9.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  %7 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv9.reg2mem, align 8
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %6, label %dec_label_pc_442d5, label %dec_label_pc_44217

dec_label_pc_44217:                               ; preds = %dec_label_pc_441bd, %dec_label_pc_44217
  %indvars.iv9.reload = load i64, ptr %indvars.iv9.reg2mem, align 8
  %8 = mul i64 %indvars.iv9.reload, 4
  %9 = add i64 %8, %7
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9.reload, 1
  %exitcond11 = icmp eq i64 %indvars.iv.next10, 10
  store i64 %indvars.iv.next10, ptr %indvars.iv9.reg2mem, align 8
  br i1 %exitcond11, label %dec_label_pc_44293, label %dec_label_pc_44217

dec_label_pc_44293:                               ; preds = %dec_label_pc_44217
  call void @printLine(ptr @global_var_ad2e8)
  %11 = icmp eq i64 %7, 0
  br i1 %11, label %dec_label_pc_44373, label %dec_label_pc_442ad

dec_label_pc_442ad:                               ; preds = %dec_label_pc_44293
  %12 = inttoptr i64 %7 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_44373

dec_label_pc_442d5:                               ; preds = %dec_label_pc_441bd, %dec_label_pc_442d5
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %7
  %17 = inttoptr i64 %16 to ptr
  store i32 0, ptr %17, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_44351, label %dec_label_pc_442d5

dec_label_pc_44351:                               ; preds = %dec_label_pc_442d5
  call void @printLine(ptr @global_var_ad2e8)
  %18 = icmp eq i64 %7, 0
  br i1 %18, label %dec_label_pc_44373, label %dec_label_pc_44367

dec_label_pc_44367:                               ; preds = %dec_label_pc_44351
  %19 = inttoptr i64 %7 to ptr
  %20 = and i64 %1, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %19, ptr %21)
  br label %dec_label_pc_44373

dec_label_pc_44373:                               ; preds = %dec_label_pc_44367, %dec_label_pc_44351, %dec_label_pc_442ad, %dec_label_pc_44293
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

