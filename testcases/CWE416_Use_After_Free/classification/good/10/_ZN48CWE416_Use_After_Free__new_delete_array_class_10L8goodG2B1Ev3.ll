@global_var_320 = external constant [20 x i8]
@global_var_4a197 = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1e0d4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63100, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1e103, label %dec_label_pc_1e0f2

dec_label_pc_1e0f2:                               ; preds = %dec_label_pc_1e0d4
  call void @printLine(ptr @global_var_4a197)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1e15a

dec_label_pc_1e103:                               ; preds = %dec_label_pc_1e0d4
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1e11b

dec_label_pc_1e11b:                               ; preds = %dec_label_pc_1e11b, %dec_label_pc_1e103
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 1, ptr %5, align 4
  %6 = add i64 %4, 4
  %7 = inttoptr i64 %6 to ptr
  store i32 2, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1e15a.loopexit, label %dec_label_pc_1e11b

dec_label_pc_1e15a.loopexit:                      ; preds = %dec_label_pc_1e11b
  %9 = inttoptr i64 %2 to ptr
  store ptr %9, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_1e15a

dec_label_pc_1e15a:                               ; preds = %dec_label_pc_1e15a.loopexit, %dec_label_pc_1e0f2
  %10 = load i32, ptr @global_var_630a8, align 4
  %11 = icmp eq i32 %10, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_1e171, label %dec_label_pc_1e164

dec_label_pc_1e164:                               ; preds = %dec_label_pc_1e15a
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %12 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e171

dec_label_pc_1e171:                               ; preds = %dec_label_pc_1e164, %dec_label_pc_1e15a
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

