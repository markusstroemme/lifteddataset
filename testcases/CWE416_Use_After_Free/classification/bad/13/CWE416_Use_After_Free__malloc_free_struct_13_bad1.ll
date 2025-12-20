@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_14470:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_144f0.preheader, label %dec_label_pc_144a4

dec_label_pc_144f0.preheader:                     ; preds = %dec_label_pc_14470
  %3 = bitcast ptr %0 to ptr
  %4 = ptrtoint ptr %0 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_144b8

dec_label_pc_144a4:                               ; preds = %dec_label_pc_14470
  call void @exit(i32 -1)
  unreachable

dec_label_pc_144b8:                               ; preds = %dec_label_pc_144b8, %dec_label_pc_144f0.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_144f7, label %dec_label_pc_144b8

dec_label_pc_144f7:                               ; preds = %dec_label_pc_144b8
  call void @free(ptr %0)
  call void @printStructLine(ptr %3)
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

