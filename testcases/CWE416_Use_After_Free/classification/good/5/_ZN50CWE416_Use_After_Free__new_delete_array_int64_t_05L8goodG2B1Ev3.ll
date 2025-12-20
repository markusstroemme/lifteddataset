@global_var_320 = external constant [20 x i8]
@global_var_4a1f4 = external constant [21 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63050 = external local_unnamed_addr global i32
@global_var_630d4 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_20a44:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630d4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_20a73, label %dec_label_pc_20a62

dec_label_pc_20a62:                               ; preds = %dec_label_pc_20a44
  call void @printLine(ptr @global_var_4a1f4)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_20ab1

dec_label_pc_20a73:                               ; preds = %dec_label_pc_20a44
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_20a8b

dec_label_pc_20a8b:                               ; preds = %dec_label_pc_20a8b, %dec_label_pc_20a73
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_20ab1.loopexit, label %dec_label_pc_20a8b

dec_label_pc_20ab1.loopexit:                      ; preds = %dec_label_pc_20a8b
  %phitmp = inttoptr i64 %2 to ptr
  store ptr %phitmp, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_20ab1

dec_label_pc_20ab1:                               ; preds = %dec_label_pc_20ab1.loopexit, %dec_label_pc_20a62
  %7 = load i32, ptr @global_var_63050, align 4
  %8 = icmp eq i32 %7, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_20aca, label %dec_label_pc_20abb

dec_label_pc_20abb:                               ; preds = %dec_label_pc_20ab1
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %9 = load i64, ptr %stack_var_-24.0.reload, align 8
  call void @printLongLongLine(i64 %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20aca

dec_label_pc_20aca:                               ; preds = %dec_label_pc_20abb, %dec_label_pc_20ab1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

