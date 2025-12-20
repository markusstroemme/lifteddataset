@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon3() local_unnamed_addr {
dec_label_pc_335c5:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_335f8, label %dec_label_pc_335ee

dec_label_pc_335ee:                               ; preds = %dec_label_pc_335c5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_335f8:                               ; preds = %dec_label_pc_335c5
  %3 = bitcast ptr %0 to ptr
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_3363b:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_33679:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_3377f:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_337b1

dec_label_pc_337b1:                               ; preds = %dec_label_pc_337b1, %dec_label_pc_3377f
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %4 = mul i64 %storemerge24.reload, 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %3, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_33827.preheader, label %dec_label_pc_337b1

dec_label_pc_33827.preheader:                     ; preds = %dec_label_pc_337b1
  %10 = ptrtoint ptr %data to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_337f4

dec_label_pc_337f4:                               ; preds = %dec_label_pc_337f4, %dec_label_pc_33827.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %11 = mul i64 %storemerge3.reload, 8
  %12 = add i64 %11, %10
  %13 = add i64 %11, %2
  %14 = inttoptr i64 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = inttoptr i64 %12 to ptr
  store i64 %15, ptr %16, align 8
  %17 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_33831, label %dec_label_pc_337f4

dec_label_pc_33831:                               ; preds = %dec_label_pc_337f4
  call void @printStructLine(ptr %data)
  %18 = bitcast ptr %data to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_33864, label %dec_label_pc_3385f

dec_label_pc_3385f:                               ; preds = %dec_label_pc_33831
  call void @__stack_chk_fail()
  br label %dec_label_pc_33864

dec_label_pc_33864:                               ; preds = %dec_label_pc_3385f, %dec_label_pc_33831
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

