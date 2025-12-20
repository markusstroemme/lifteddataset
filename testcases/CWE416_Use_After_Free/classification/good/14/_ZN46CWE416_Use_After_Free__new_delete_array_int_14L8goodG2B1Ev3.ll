@global_var_4a346 = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_253b0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_253e0, label %dec_label_pc_253cf

dec_label_pc_253cf:                               ; preds = %dec_label_pc_253b0
  call void @printLine(ptr @global_var_4a346)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2541d

dec_label_pc_253e0:                               ; preds = %dec_label_pc_253b0
  %2 = call i64 @_Znam(i64 400)
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_253f8

dec_label_pc_253f8:                               ; preds = %dec_label_pc_253f8, %dec_label_pc_253e0
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 5, ptr %5, align 4
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2541d.loopexit, label %dec_label_pc_253f8

dec_label_pc_2541d.loopexit:                      ; preds = %dec_label_pc_253f8
  %7 = inttoptr i64 %2 to ptr
  store ptr %7, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2541d

dec_label_pc_2541d:                               ; preds = %dec_label_pc_2541d.loopexit, %dec_label_pc_253cf
  %8 = load i32, ptr @global_var_630ac, align 4
  %9 = zext i32 %8 to i64
  %10 = icmp eq i32 %8, 5
  %11 = icmp eq i1 %10, false
  store i64 %9, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_25435, label %dec_label_pc_25428

dec_label_pc_25428:                               ; preds = %dec_label_pc_2541d
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %12 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %12)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_25435

dec_label_pc_25435:                               ; preds = %dec_label_pc_25428, %dec_label_pc_2541d
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

