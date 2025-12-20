@global_var_2f050 = external constant [21 x i8]
@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32
@global_var_3d0e0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14952:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-1640.0.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_3d0e0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1498b, label %dec_label_pc_1497a

dec_label_pc_1497a:                               ; preds = %dec_label_pc_14952
  call void @printLine(ptr @global_var_2f050)
  br label %dec_label_pc_14999

dec_label_pc_1498b:                               ; preds = %dec_label_pc_14952
  %3 = bitcast ptr %stack_var_-1624 to ptr
  store ptr %3, ptr %stack_var_-1640.0.reg2mem, align 8
  br label %dec_label_pc_14999

dec_label_pc_14999:                               ; preds = %dec_label_pc_1498b, %dec_label_pc_1497a
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-1640.0.reload = load ptr, ptr %stack_var_-1640.0.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_149a6

dec_label_pc_149a6:                               ; preds = %dec_label_pc_149a6, %dec_label_pc_14999
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = add i64 %6, -816
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %6, -812
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_149dc, label %dec_label_pc_149a6

dec_label_pc_149dc:                               ; preds = %dec_label_pc_149a6
  %12 = bitcast ptr %stack_var_-1640.0.reload to ptr
  %13 = call ptr @memcpy(ptr %12, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %stack_var_-1640.0.reload)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_14a1e, label %dec_label_pc_14a19

dec_label_pc_14a19:                               ; preds = %dec_label_pc_149dc
  call void @__stack_chk_fail()
  br label %dec_label_pc_14a1e

dec_label_pc_14a1e:                               ; preds = %dec_label_pc_14a19, %dec_label_pc_149dc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_27317:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_2733a, label %dec_label_pc_2732e

dec_label_pc_2732e:                               ; preds = %dec_label_pc_27317
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_2733a

dec_label_pc_2733a:                               ; preds = %dec_label_pc_2732e, %dec_label_pc_27317
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

