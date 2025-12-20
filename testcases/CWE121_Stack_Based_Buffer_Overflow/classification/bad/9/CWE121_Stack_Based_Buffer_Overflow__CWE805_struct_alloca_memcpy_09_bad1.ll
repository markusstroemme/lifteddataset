@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6bd10:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-856 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-856 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6bd5e

dec_label_pc_6bd5e:                               ; preds = %dec_label_pc_6bd5e, %dec_label_pc_6bd10
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_6bd75, label %dec_label_pc_6bd5e

dec_label_pc_6bd75:                               ; preds = %dec_label_pc_6bd5e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %6 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_6bde5

dec_label_pc_6bde5:                               ; preds = %dec_label_pc_6bde5, %dec_label_pc_6bd75
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %6
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_6bdfc, label %dec_label_pc_6bde5

dec_label_pc_6bdfc:                               ; preds = %dec_label_pc_6bde5
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %10 = and i64 %5, -16
  %11 = bitcast ptr %stack_var_-856 to ptr
  store i64 %10, ptr %11, align 8
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_6be61

dec_label_pc_6be61:                               ; preds = %dec_label_pc_6bdfc, %dec_label_pc_6be61
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge2.reload to i64
  %13 = mul i64 %12, 8
  %14 = add i64 %13, %9
  %15 = add i64 %14, -816
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 8
  %17 = add i64 %14, -812
  %18 = inttoptr i64 %17 to ptr
  store i32 0, ptr %18, align 4
  %19 = add i64 %12, 1
  %20 = inttoptr i64 %19 to ptr
  %21 = icmp ugt ptr %20, inttoptr (i64 99 to ptr)
  store ptr %20, ptr %storemerge2.reg2mem, align 8
  br i1 %21, label %dec_label_pc_6be97, label %dec_label_pc_6be61

dec_label_pc_6be97:                               ; preds = %dec_label_pc_6be61
  %22 = load ptr, ptr %stack_var_-856, align 8
  %23 = bitcast ptr %22 to ptr
  %24 = call ptr @memcpy(ptr %23, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %25 = load ptr, ptr %stack_var_-856, align 8
  call void @printStructLine(ptr %25)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %1, %26
  br i1 %27, label %dec_label_pc_6bed9, label %dec_label_pc_6bed4

dec_label_pc_6bed4:                               ; preds = %dec_label_pc_6be97
  call void @__stack_chk_fail()
  br label %dec_label_pc_6bed9

dec_label_pc_6bed9:                               ; preds = %dec_label_pc_6bed4, %dec_label_pc_6be97
  ret void
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

