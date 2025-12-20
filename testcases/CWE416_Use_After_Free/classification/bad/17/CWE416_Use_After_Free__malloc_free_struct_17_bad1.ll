@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_15051:
  %storemerge36.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_150b2.preheader, label %dec_label_pc_15066

dec_label_pc_150b2.preheader:                     ; preds = %dec_label_pc_15051
  %3 = ptrtoint ptr %0 to i64
  store i64 0, ptr %storemerge36.reg2mem, align 8
  br label %dec_label_pc_1507a

dec_label_pc_15066:                               ; preds = %dec_label_pc_15051
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1507a:                               ; preds = %dec_label_pc_1507a, %dec_label_pc_150b2.preheader
  %storemerge36.reload = load i64, ptr %storemerge36.reg2mem, align 8
  %4 = mul i64 %storemerge36.reload, 8
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i32 1, ptr %6, align 4
  %7 = add i64 %5, 4
  %8 = inttoptr i64 %7 to ptr
  store i32 2, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge36.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge36.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_150ee, label %dec_label_pc_1507a

dec_label_pc_150ee:                               ; preds = %dec_label_pc_1507a
  call void @free(ptr %0)
  %10 = bitcast ptr %0 to ptr
  call void @printStructLine(ptr %10)
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

