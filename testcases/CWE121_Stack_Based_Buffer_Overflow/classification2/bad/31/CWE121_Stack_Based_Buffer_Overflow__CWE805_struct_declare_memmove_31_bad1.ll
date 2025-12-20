@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a4de:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1224 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1a533

dec_label_pc_1a533:                               ; preds = %dec_label_pc_1a4de, %dec_label_pc_1a533
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %2 = ptrtoint ptr %storemerge1.reload to i64
  %3 = mul i64 %2, 8
  %4 = add i64 %3, %0
  %5 = add i64 %4, -816
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %4, -812
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add i64 %2, 1
  %10 = inttoptr i64 %9 to ptr
  %11 = icmp ugt ptr %10, inttoptr (i64 99 to ptr)
  store ptr %10, ptr %storemerge1.reg2mem, align 8
  br i1 %11, label %dec_label_pc_1a569, label %dec_label_pc_1a533

dec_label_pc_1a569:                               ; preds = %dec_label_pc_1a533
  %12 = call ptr @memmove(ptr nonnull %stack_var_-1224, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %13 = bitcast ptr %stack_var_-1224 to ptr
  call void @printStructLine(ptr nonnull %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_1a5ab, label %dec_label_pc_1a5a6

dec_label_pc_1a5a6:                               ; preds = %dec_label_pc_1a569
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a5ab

dec_label_pc_1a5ab:                               ; preds = %dec_label_pc_1a5a6, %dec_label_pc_1a569
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

