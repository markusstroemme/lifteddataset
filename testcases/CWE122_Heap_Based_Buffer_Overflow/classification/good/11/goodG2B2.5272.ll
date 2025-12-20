@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_301b9:
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-848.0.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  store ptr null, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_30215, label %dec_label_pc_301f0

dec_label_pc_301f0:                               ; preds = %dec_label_pc_301b9
  %3 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %4 = bitcast ptr %3 to ptr
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr %4, ptr %stack_var_-848.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_30215, label %dec_label_pc_3020b

dec_label_pc_3020b:                               ; preds = %dec_label_pc_301f0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_30215:                               ; preds = %dec_label_pc_301f0, %dec_label_pc_301b9
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-848.0.reload = load ptr, ptr %stack_var_-848.0.reg2mem, align 8
  %8 = add i64 %7, -816
  %9 = add i64 %7, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_30222

dec_label_pc_30222:                               ; preds = %dec_label_pc_30222, %dec_label_pc_30215
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %10 = mul i64 %storemerge24.reload, 8
  %11 = add i64 %10, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 8
  %13 = add i64 %9, %10
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge24.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_30298.preheader, label %dec_label_pc_30222

dec_label_pc_30298.preheader:                     ; preds = %dec_label_pc_30222
  %16 = ptrtoint ptr %stack_var_-848.0.reload to i64
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_30265

dec_label_pc_30265:                               ; preds = %dec_label_pc_30265, %dec_label_pc_30298.preheader
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %17 = mul i64 %storemerge3.reload, 8
  %18 = add i64 %17, %16
  %19 = add i64 %17, %8
  %20 = inttoptr i64 %19 to ptr
  %21 = load i64, ptr %20, align 8
  %22 = inttoptr i64 %18 to ptr
  store i64 %21, ptr %22, align 8
  %23 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %23, 100
  store i64 %23, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_302a2, label %dec_label_pc_30265

dec_label_pc_302a2:                               ; preds = %dec_label_pc_30265
  call void @printStructLine(ptr %stack_var_-848.0.reload)
  %24 = bitcast ptr %stack_var_-848.0.reload to ptr
  call void @free(ptr %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_302d5, label %dec_label_pc_302d0

dec_label_pc_302d0:                               ; preds = %dec_label_pc_302a2
  call void @__stack_chk_fail()
  br label %dec_label_pc_302d5

dec_label_pc_302d5:                               ; preds = %dec_label_pc_302d0, %dec_label_pc_302a2
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_65cb6:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

