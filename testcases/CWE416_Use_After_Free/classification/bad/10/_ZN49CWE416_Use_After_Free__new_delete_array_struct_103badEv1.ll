@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2af57:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_630a8, align 4
  %3 = icmp eq i32 %2, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2aff5, label %dec_label_pc_2af75

dec_label_pc_2af75:                               ; preds = %dec_label_pc_2af57
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2af8d

dec_label_pc_2af8d:                               ; preds = %dec_label_pc_2af8d, %dec_label_pc_2af75
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 8
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  %8 = add i64 %6, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2afcc, label %dec_label_pc_2af8d

dec_label_pc_2afcc:                               ; preds = %dec_label_pc_2af8d
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %dec_label_pc_2afdf, label %dec_label_pc_2afd3

dec_label_pc_2afd3:                               ; preds = %dec_label_pc_2afcc
  %12 = inttoptr i64 %4 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_2afdf

dec_label_pc_2afdf:                               ; preds = %dec_label_pc_2afd3, %dec_label_pc_2afcc
  %.pr = load i32, ptr @global_var_630a8, align 4
  %15 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_2aff5, label %dec_label_pc_2afe9

dec_label_pc_2afe9:                               ; preds = %dec_label_pc_2afdf
  %16 = inttoptr i64 %4 to ptr
  call void @printStructLine(ptr %16)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2aff5

dec_label_pc_2aff5:                               ; preds = %dec_label_pc_2af57, %dec_label_pc_2afe9, %dec_label_pc_2afdf
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

