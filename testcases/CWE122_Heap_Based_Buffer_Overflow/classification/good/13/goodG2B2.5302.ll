@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_307d8:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3086a.preheader, label %dec_label_pc_30827

dec_label_pc_3086a.preheader:                     ; preds = %dec_label_pc_307d8
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = bitcast ptr %1 to ptr
  %6 = add i64 %4, -816
  %7 = add i64 %4, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_3083e

dec_label_pc_30827:                               ; preds = %dec_label_pc_307d8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3083e:                               ; preds = %dec_label_pc_3083e, %dec_label_pc_3086a.preheader
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %8 = mul i64 %storemerge24.reload, 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %7, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_308b4.preheader, label %dec_label_pc_3083e

dec_label_pc_308b4.preheader:                     ; preds = %dec_label_pc_3083e
  %14 = ptrtoint ptr %1 to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_30881

dec_label_pc_30881:                               ; preds = %dec_label_pc_30881, %dec_label_pc_308b4.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %15 = mul i64 %storemerge3.reload, 8
  %16 = add i64 %15, %14
  %17 = add i64 %15, %6
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %21, 100
  store i64 %21, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_308be, label %dec_label_pc_30881

dec_label_pc_308be:                               ; preds = %dec_label_pc_30881
  call void @printStructLine(ptr %5)
  call void @free(ptr %1)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_308f1, label %dec_label_pc_308ec

dec_label_pc_308ec:                               ; preds = %dec_label_pc_308be
  call void @__stack_chk_fail()
  br label %dec_label_pc_308f1

dec_label_pc_308f1:                               ; preds = %dec_label_pc_308ec, %dec_label_pc_308be
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

