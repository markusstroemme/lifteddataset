@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32
@global_var_6306c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a5b1:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_6306c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_2a63a, label %dec_label_pc_2a5d0

dec_label_pc_2a5d0:                               ; preds = %dec_label_pc_2a5b1
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2a5e8

dec_label_pc_2a5e8:                               ; preds = %dec_label_pc_2a5e8, %dec_label_pc_2a5d0
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %5
  %8 = inttoptr i64 %7 to ptr
  store i32 1, ptr %8, align 4
  %9 = add i64 %7, 4
  %10 = inttoptr i64 %9 to ptr
  store i32 2, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2a627, label %dec_label_pc_2a5e8

dec_label_pc_2a627:                               ; preds = %dec_label_pc_2a5e8
  %12 = inttoptr i64 %5 to ptr
  %13 = icmp eq i64 %5, 0
  store ptr %12, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2a63a, label %dec_label_pc_2a62e

dec_label_pc_2a62e:                               ; preds = %dec_label_pc_2a627
  %14 = inttoptr i64 %5 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  store ptr %12, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2a63a

dec_label_pc_2a63a:                               ; preds = %dec_label_pc_2a62e, %dec_label_pc_2a627, %dec_label_pc_2a5b1
  %17 = load i32, ptr @global_var_6306c, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp eq i32 %17, 5
  %20 = icmp eq i1 %19, false
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_2a651, label %dec_label_pc_2a645

dec_label_pc_2a645:                               ; preds = %dec_label_pc_2a63a
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a651

dec_label_pc_2a651:                               ; preds = %dec_label_pc_2a645, %dec_label_pc_2a63a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

