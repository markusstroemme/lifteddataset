@global_var_4a307 = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_24923:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63100, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_24952, label %dec_label_pc_24941

dec_label_pc_24941:                               ; preds = %dec_label_pc_24923
  call void @printLine(ptr @global_var_4a307)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2498f

dec_label_pc_24952:                               ; preds = %dec_label_pc_24923
  %2 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2496a

dec_label_pc_2496a:                               ; preds = %dec_label_pc_2496a, %dec_label_pc_24952
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2498f.loopexit, label %dec_label_pc_2496a

dec_label_pc_2498f.loopexit:                      ; preds = %dec_label_pc_2496a
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2498f

dec_label_pc_2498f:                               ; preds = %dec_label_pc_2498f.loopexit, %dec_label_pc_24941
  %8 = load i32, ptr @global_var_630a8, align 4
  %9 = icmp eq i32 %8, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_249a6, label %dec_label_pc_24999

dec_label_pc_24999:                               ; preds = %dec_label_pc_2498f
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %10 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %10)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_249a6

dec_label_pc_249a6:                               ; preds = %dec_label_pc_24999, %dec_label_pc_2498f
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

