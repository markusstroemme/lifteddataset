@global_var_7c84a = external constant [10 x i8]
@global_var_a206c = external local_unnamed_addr global i32
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_374ec:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_a206c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_37545, label %dec_label_pc_37520

dec_label_pc_37520:                               ; preds = %dec_label_pc_374ec
  %4 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %5 = bitcast ptr %4 to ptr
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store ptr %5, ptr %stack_var_-840.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_37545, label %dec_label_pc_3753b

dec_label_pc_3753b:                               ; preds = %dec_label_pc_37520
  call void @exit(i32 -1)
  unreachable

dec_label_pc_37545:                               ; preds = %dec_label_pc_37520, %dec_label_pc_374ec
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load ptr, ptr %stack_var_-840.0.reg2mem, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_37552

dec_label_pc_37552:                               ; preds = %dec_label_pc_37552, %dec_label_pc_37545
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %9 = mul i64 %storemerge2.reload, 8
  %10 = add i64 %9, %8
  %11 = add i64 %10, -816
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 8
  %13 = add i64 %10, -812
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37588, label %dec_label_pc_37552

dec_label_pc_37588:                               ; preds = %dec_label_pc_37552
  %16 = bitcast ptr %stack_var_-840.0.reload to ptr
  %17 = call ptr @memcpy(ptr %16, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %stack_var_-840.0.reload)
  call void @free(ptr %16)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_375d9, label %dec_label_pc_375d4

dec_label_pc_375d4:                               ; preds = %dec_label_pc_37588
  call void @__stack_chk_fail()
  br label %dec_label_pc_375d9

dec_label_pc_375d9:                               ; preds = %dec_label_pc_375d4, %dec_label_pc_37588
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

