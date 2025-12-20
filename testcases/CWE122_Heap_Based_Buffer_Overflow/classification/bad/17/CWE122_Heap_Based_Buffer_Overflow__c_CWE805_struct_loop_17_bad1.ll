@global_var_7c84a = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_31251:
  %storemerge5.reg2mem = alloca i64, align 8
  %storemerge26.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 400)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_312bf.preheader, label %dec_label_pc_3126c

dec_label_pc_3126c:                               ; preds = %dec_label_pc_31251
  call void @exit(i32 -1)
  unreachable

dec_label_pc_312bf.preheader:                     ; preds = %dec_label_pc_31251
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = add i64 %4, -816
  %6 = add i64 %4, -812
  store i64 0, ptr %storemerge26.reg2mem, align 8
  br label %dec_label_pc_31293

dec_label_pc_31293:                               ; preds = %dec_label_pc_31293, %dec_label_pc_312bf.preheader
  %storemerge26.reload = load i64, ptr %storemerge26.reg2mem, align 8
  %7 = mul i64 %storemerge26.reload, 8
  %8 = add i64 %7, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %6, %7
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge26.reload, 1
  %exitcond9 = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge26.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_31309.preheader, label %dec_label_pc_31293

dec_label_pc_31309.preheader:                     ; preds = %dec_label_pc_31293
  %13 = ptrtoint ptr %1 to i64
  store i64 0, ptr %storemerge5.reg2mem, align 8
  br label %dec_label_pc_312d6

dec_label_pc_312d6:                               ; preds = %dec_label_pc_312d6, %dec_label_pc_31309.preheader
  %storemerge5.reload = load i64, ptr %storemerge5.reg2mem, align 8
  %14 = mul i64 %storemerge5.reload, 8
  %15 = add i64 %14, %13
  %16 = add i64 %14, %5
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge5.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge5.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_31313, label %dec_label_pc_312d6

dec_label_pc_31313:                               ; preds = %dec_label_pc_312d6
  %21 = bitcast ptr %1 to ptr
  call void @printStructLine(ptr %21)
  call void @free(ptr %1)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_31346, label %dec_label_pc_31341

dec_label_pc_31341:                               ; preds = %dec_label_pc_31313
  call void @__stack_chk_fail()
  br label %dec_label_pc_31346

dec_label_pc_31346:                               ; preds = %dec_label_pc_31341, %dec_label_pc_31313
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_65a35:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_7c84a, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

