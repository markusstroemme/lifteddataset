@global_var_7c84a = external constant [10 x i8]
@global_var_a206c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_30912:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-848.0.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a206c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3096b, label %dec_label_pc_30946

dec_label_pc_30946:                               ; preds = %dec_label_pc_30912
  %4 = call ptr @malloc(i32 400)
  %5 = bitcast ptr %4 to ptr
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store ptr %5, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3096b, label %dec_label_pc_30961

dec_label_pc_30961:                               ; preds = %dec_label_pc_30946
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3096b:                               ; preds = %dec_label_pc_30946, %dec_label_pc_30912
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-848.0.reload = load ptr, ptr %stack_var_-848.0.reg2mem, align 8
  %9 = add i64 %8, -816
  %10 = add i64 %8, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_30978

dec_label_pc_30978:                               ; preds = %dec_label_pc_30978, %dec_label_pc_3096b
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %11 = mul i64 %storemerge24.reload, 8
  %12 = add i64 %11, %9
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 8
  %14 = add i64 %10, %11
  %15 = inttoptr i64 %14 to ptr
  store i32 0, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_309ee.preheader, label %dec_label_pc_30978

dec_label_pc_309ee.preheader:                     ; preds = %dec_label_pc_30978
  %17 = ptrtoint ptr %stack_var_-848.0.reload to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_309bb

dec_label_pc_309bb:                               ; preds = %dec_label_pc_309bb, %dec_label_pc_309ee.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %18 = mul i64 %storemerge3.reload, 8
  %19 = add i64 %18, %17
  %20 = add i64 %18, %9
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 8
  %23 = inttoptr i64 %19 to ptr
  store i64 %22, ptr %23, align 8
  %24 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %24, 100
  store i64 %24, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_309f8, label %dec_label_pc_309bb

dec_label_pc_309f8:                               ; preds = %dec_label_pc_309bb
  call void @printStructLine(ptr %stack_var_-848.0.reload)
  %25 = bitcast ptr %stack_var_-848.0.reload to ptr
  call void @free(ptr %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_30a2b, label %dec_label_pc_30a26

dec_label_pc_30a26:                               ; preds = %dec_label_pc_309f8
  call void @__stack_chk_fail()
  br label %dec_label_pc_30a2b

dec_label_pc_30a2b:                               ; preds = %dec_label_pc_30a26, %dec_label_pc_309f8
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

