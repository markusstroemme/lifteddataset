@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_9ab8d:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-872 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-872 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_9abe9

dec_label_pc_9abe9:                               ; preds = %dec_label_pc_9abe9, %dec_label_pc_9ab8d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_9ac00, label %dec_label_pc_9abe9

dec_label_pc_9ac00:                               ; preds = %dec_label_pc_9abe9
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_9ac70

dec_label_pc_9ac70:                               ; preds = %dec_label_pc_9ac70, %dec_label_pc_9ac00
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_9ac87, label %dec_label_pc_9ac70

dec_label_pc_9ac87:                               ; preds = %dec_label_pc_9ac70
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %9 = add i64 %4, 15
  %10 = and i64 %9, -16
  store i64 %10, ptr %stack_var_-872, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_9acf3

dec_label_pc_9acf3:                               ; preds = %dec_label_pc_9acf3, %dec_label_pc_9ac87
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %11 = mul i64 %storemerge2.reload, 8
  %12 = add i64 %11, %8
  %13 = add i64 %12, -816
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 8
  %15 = add i64 %12, -812
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %17 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_9ad29, label %dec_label_pc_9acf3

dec_label_pc_9ad29:                               ; preds = %dec_label_pc_9acf3
  %18 = inttoptr i64 %10 to ptr
  %19 = inttoptr i64 %10 to ptr
  %20 = call ptr @memcpy(ptr %19, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %18)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_9ad6b, label %dec_label_pc_9ad66

dec_label_pc_9ad66:                               ; preds = %dec_label_pc_9ad29
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_9ad6b

dec_label_pc_9ad6b:                               ; preds = %dec_label_pc_9ad66, %dec_label_pc_9ad29
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_9cdaa:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_bb9d2, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

