@global_var_320 = external constant [20 x i8]
@global_var_4a438 = external constant [21 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32
@global_var_6306c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a786:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_6306c, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_2a7b6, label %dec_label_pc_2a7a5

dec_label_pc_2a7a5:                               ; preds = %dec_label_pc_2a786
  call void @printLine(ptr @global_var_4a438)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2a80d

dec_label_pc_2a7b6:                               ; preds = %dec_label_pc_2a786
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2a7ce

dec_label_pc_2a7ce:                               ; preds = %dec_label_pc_2a7ce, %dec_label_pc_2a7b6
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
  br i1 %exitcond, label %dec_label_pc_2a80d.loopexit, label %dec_label_pc_2a7ce

dec_label_pc_2a80d.loopexit:                      ; preds = %dec_label_pc_2a7ce
  %9 = inttoptr i64 %2 to ptr
  store ptr %9, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2a80d

dec_label_pc_2a80d:                               ; preds = %dec_label_pc_2a80d.loopexit, %dec_label_pc_2a7a5
  %10 = load i32, ptr @global_var_6306c, align 4
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 5
  %13 = icmp eq i1 %12, false
  store i64 %11, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2a824, label %dec_label_pc_2a818

dec_label_pc_2a818:                               ; preds = %dec_label_pc_2a80d
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a824

dec_label_pc_2a824:                               ; preds = %dec_label_pc_2a818, %dec_label_pc_2a80d
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

