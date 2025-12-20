@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_921d:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_9267, label %dec_label_pc_9254

dec_label_pc_9254:                                ; preds = %dec_label_pc_921d
  %5 = call i64 @_Znam(i64 400)
  store i64 %5, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_9278

dec_label_pc_9267:                                ; preds = %dec_label_pc_921d
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %6, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_9278

dec_label_pc_9278:                                ; preds = %dec_label_pc_9267, %dec_label_pc_9254
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_9285

dec_label_pc_9285:                                ; preds = %dec_label_pc_9285, %dec_label_pc_9278
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = mul i64 %storemerge2.reload, 8
  %9 = add i64 %8, %7
  %10 = add i64 %9, -816
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 8
  %12 = add i64 %9, -812
  %13 = inttoptr i64 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_92bb, label %dec_label_pc_9285

dec_label_pc_92bb:                                ; preds = %dec_label_pc_9285
  %15 = inttoptr i64 %storemerge1.reload to ptr
  %16 = call ptr @memcpy(ptr %15, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %17 = inttoptr i64 %storemerge1.reload to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = icmp eq i64 %storemerge1.reload, 0
  br i1 %19, label %dec_label_pc_9302, label %dec_label_pc_92f3

dec_label_pc_92f3:                                ; preds = %dec_label_pc_92bb
  %20 = ptrtoint ptr %stack_var_-824 to i64
  %21 = and i64 %20, 4294967288
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %15, ptr %22)
  br label %dec_label_pc_9302

dec_label_pc_9302:                                ; preds = %dec_label_pc_92f3, %dec_label_pc_92bb
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_9317, label %dec_label_pc_9312

dec_label_pc_9312:                                ; preds = %dec_label_pc_9302
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9317

dec_label_pc_9317:                                ; preds = %dec_label_pc_9312, %dec_label_pc_9302
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4dea6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

