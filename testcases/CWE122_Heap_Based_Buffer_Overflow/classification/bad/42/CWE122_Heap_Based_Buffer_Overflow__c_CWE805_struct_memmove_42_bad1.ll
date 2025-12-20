@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_3ef06:
  %0 = call ptr @malloc(i32 400)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_3ef35, label %dec_label_pc_3ef2b

dec_label_pc_3ef2b:                               ; preds = %dec_label_pc_3ef06
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3ef35:                               ; preds = %dec_label_pc_3ef06
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3ef3b:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @anon1(ptr null)
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3ef87

dec_label_pc_3ef87:                               ; preds = %dec_label_pc_3ef3b, %dec_label_pc_3ef87
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %3 = ptrtoint ptr %storemerge2.reload to i64
  %4 = mul i64 %3, 8
  %5 = add i64 %4, %0
  %6 = add i64 %5, -816
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %5, -812
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add i64 %3, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge2.reg2mem, align 8
  br i1 %12, label %dec_label_pc_3efbd, label %dec_label_pc_3ef87

dec_label_pc_3efbd:                               ; preds = %dec_label_pc_3ef87
  %13 = bitcast ptr %2 to ptr
  %14 = call ptr @memmove(ptr %13, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %2)
  call void @free(ptr %13)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_3f00e, label %dec_label_pc_3f009

dec_label_pc_3f009:                               ; preds = %dec_label_pc_3efbd
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f00e

dec_label_pc_3f00e:                               ; preds = %dec_label_pc_3f009, %dec_label_pc_3efbd
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

