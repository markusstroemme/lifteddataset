@global_var_1000 = external global ptr
@global_var_b9b10 = external constant [43 x i32]
@global_var_b9bbc = external constant [21 x i8]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_ef300 = external local_unnamed_addr global i32
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5ec5c:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  %spec.store.select = select i1 %2, ptr null, ptr @global_var_b9b10
  store ptr %spec.store.select, ptr %stack_var_-40, align 8
  %3 = load i32, ptr @global_var_ef300, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_5ecb2, label %dec_label_pc_5ec9e

dec_label_pc_5ec9e:                               ; preds = %dec_label_pc_5ec5c
  call void @printLine(ptr @global_var_b9bbc)
  br label %dec_label_pc_5ed72

dec_label_pc_5ecb2:                               ; preds = %dec_label_pc_5ec5c
  %5 = ptrtoint ptr %stack_var_-40 to i64
  %6 = call i32 @wcslen(ptr %spec.store.select)
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = add nsw i64 %8, 27
  %10 = udiv i64 %9, 16
  %11 = mul i64 %10, 16
  %12 = and i64 %11, -4096
  %13 = sub i64 %5, %12
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5ecff

dec_label_pc_5ecff:                               ; preds = %dec_label_pc_5ecff, %dec_label_pc_5ecb2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %14 = icmp eq i64 %rsp.0.reload, %13
  %15 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %15, ptr %rsp.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_5ed16, label %dec_label_pc_5ecff

dec_label_pc_5ed16:                               ; preds = %dec_label_pc_5ecff
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %16 = and i64 %11, %constexpr
  %17 = sub nsw i64 15, %16
  %18 = add i64 %17, %13
  %19 = and i64 %18, -16
  %20 = load ptr, ptr %stack_var_-40, align 8
  %21 = inttoptr i64 %19 to ptr
  %22 = call ptr @wcscpy(ptr %21, ptr %20)
  call void @printWLine(ptr %21)
  br label %dec_label_pc_5ed72

dec_label_pc_5ed72:                               ; preds = %dec_label_pc_5ed16, %dec_label_pc_5ec9e
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_5ed87, label %dec_label_pc_5ed82

dec_label_pc_5ed82:                               ; preds = %dec_label_pc_5ed72
  call void @__stack_chk_fail()
  br label %dec_label_pc_5ed87

dec_label_pc_5ed87:                               ; preds = %dec_label_pc_5ed82, %dec_label_pc_5ed72
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06e1:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a0713, label %dec_label_pc_a06f8

dec_label_pc_a06f8:                               ; preds = %dec_label_pc_a06e1
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_c074c)
  br label %dec_label_pc_a0713

dec_label_pc_a0713:                               ; preds = %dec_label_pc_a06f8, %dec_label_pc_a06e1
  ret void
}

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

