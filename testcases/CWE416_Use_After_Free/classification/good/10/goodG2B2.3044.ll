@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@global_var_630a8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_13c8c:
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_13d28, label %dec_label_pc_13caa

dec_label_pc_13caa:                               ; preds = %dec_label_pc_13c8c
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_13d0b.preheader, label %dec_label_pc_13cbf

dec_label_pc_13d0b.preheader:                     ; preds = %dec_label_pc_13caa
  %5 = bitcast ptr %2 to ptr
  %6 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_13cd3

dec_label_pc_13cbf:                               ; preds = %dec_label_pc_13caa
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13cd3:                               ; preds = %dec_label_pc_13cd3, %dec_label_pc_13d0b.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_13d12, label %dec_label_pc_13cd3

dec_label_pc_13d12:                               ; preds = %dec_label_pc_13cd3
  %.pr = load i32, ptr @global_var_630a8, align 4
  %13 = icmp eq i32 %.pr, 0
  br i1 %13, label %dec_label_pc_13d28, label %dec_label_pc_13d1c

dec_label_pc_13d1c:                               ; preds = %dec_label_pc_13d12
  call void @printStructLine(ptr %5)
  br label %dec_label_pc_13d28

dec_label_pc_13d28:                               ; preds = %dec_label_pc_13c8c, %dec_label_pc_13d1c, %dec_label_pc_13d12
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

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

