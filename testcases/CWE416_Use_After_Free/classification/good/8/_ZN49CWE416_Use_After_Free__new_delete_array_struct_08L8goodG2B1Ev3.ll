@global_var_320 = external constant [20 x i8]
@global_var_4a44d = external constant [21 x i8]
@global_var_4a96e = external constant [10 x i8]
@0 = external global i32

define i32 @staticReturnsTrue.408() local_unnamed_addr {
dec_label_pc_2a8d6:
  ret i32 1
}

define i32 @staticReturnsFalse.409() local_unnamed_addr {
dec_label_pc_2a8e5:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2aadf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsFalse.409()
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2ab12, label %dec_label_pc_2ab01

dec_label_pc_2ab01:                               ; preds = %dec_label_pc_2aadf
  call void @printLine(ptr @global_var_4a44d)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2ab69

dec_label_pc_2ab12:                               ; preds = %dec_label_pc_2aadf
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2ab2a

dec_label_pc_2ab2a:                               ; preds = %dec_label_pc_2ab2a, %dec_label_pc_2ab12
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
  br i1 %exitcond, label %dec_label_pc_2ab69.loopexit, label %dec_label_pc_2ab2a

dec_label_pc_2ab69.loopexit:                      ; preds = %dec_label_pc_2ab2a
  %11 = inttoptr i64 %4 to ptr
  store ptr %11, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_2ab69

dec_label_pc_2ab69:                               ; preds = %dec_label_pc_2ab69.loopexit, %dec_label_pc_2ab01
  %12 = call i32 @staticReturnsTrue.408()
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i1 %13, false
  %15 = zext i1 %14 to i64
  %16 = and i32 %12, -256
  %17 = sext i32 %16 to i64
  %18 = or i64 %15, %17
  %19 = icmp eq i1 %14, false
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_2ab83, label %dec_label_pc_2ab77

dec_label_pc_2ab77:                               ; preds = %dec_label_pc_2ab69
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2ab83

dec_label_pc_2ab83:                               ; preds = %dec_label_pc_2ab77, %dec_label_pc_2ab69
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

