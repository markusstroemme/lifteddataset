@global_var_320 = external constant [20 x i8]
@global_var_4a41c = external constant [21 x i8]
@0 = external global i32
@global_var_63068 = external local_unnamed_addr global i32
@global_var_630e0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a094:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_63068, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2a11c, label %dec_label_pc_2a0b2

dec_label_pc_2a0b2:                               ; preds = %dec_label_pc_2a094
  %4 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2a0ca

dec_label_pc_2a0ca:                               ; preds = %dec_label_pc_2a0ca, %dec_label_pc_2a0b2
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
  br i1 %exitcond, label %dec_label_pc_2a109, label %dec_label_pc_2a0ca

dec_label_pc_2a109:                               ; preds = %dec_label_pc_2a0ca
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %dec_label_pc_2a11c, label %dec_label_pc_2a110

dec_label_pc_2a110:                               ; preds = %dec_label_pc_2a109
  %12 = inttoptr i64 %4 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_2a11c

dec_label_pc_2a11c:                               ; preds = %dec_label_pc_2a110, %dec_label_pc_2a109, %dec_label_pc_2a094
  %15 = load i32, ptr @global_var_630e0, align 4
  %16 = icmp eq i32 %15, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_2a135, label %dec_label_pc_2a126

dec_label_pc_2a126:                               ; preds = %dec_label_pc_2a11c
  call void @printLine(ptr @global_var_4a41c)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a135

dec_label_pc_2a135:                               ; preds = %dec_label_pc_2a126, %dec_label_pc_2a11c
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

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

