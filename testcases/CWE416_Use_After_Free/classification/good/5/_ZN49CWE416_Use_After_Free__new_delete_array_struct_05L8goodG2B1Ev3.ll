@global_var_320 = external constant [20 x i8]
@global_var_4a41c = external constant [21 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32
@global_var_63068 = external local_unnamed_addr global i32
@global_var_630e0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a1c3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630e0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2a1f2, label %dec_label_pc_2a1e1

dec_label_pc_2a1e1:                               ; preds = %dec_label_pc_2a1c3
  call void @printLine(ptr @global_var_4a41c)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2a249

dec_label_pc_2a1f2:                               ; preds = %dec_label_pc_2a1c3
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2a20a

dec_label_pc_2a20a:                               ; preds = %dec_label_pc_2a20a, %dec_label_pc_2a1f2
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
  br i1 %exitcond, label %dec_label_pc_2a249.loopexit, label %dec_label_pc_2a20a

dec_label_pc_2a249.loopexit:                      ; preds = %dec_label_pc_2a20a
  %9 = inttoptr i64 %2 to ptr
  store ptr %9, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2a249

dec_label_pc_2a249:                               ; preds = %dec_label_pc_2a249.loopexit, %dec_label_pc_2a1e1
  %10 = load i32, ptr @global_var_63068, align 4
  %11 = icmp eq i32 %10, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_2a25f, label %dec_label_pc_2a253

dec_label_pc_2a253:                               ; preds = %dec_label_pc_2a249
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a25f

dec_label_pc_2a25f:                               ; preds = %dec_label_pc_2a253, %dec_label_pc_2a249
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

declare i32 @puts(ptr) local_unnamed_addr

