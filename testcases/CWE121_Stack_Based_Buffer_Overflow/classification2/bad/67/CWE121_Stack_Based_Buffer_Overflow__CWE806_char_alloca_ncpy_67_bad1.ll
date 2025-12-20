@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_32e58:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_32ea1

dec_label_pc_32ea1:                               ; preds = %dec_label_pc_32ea1, %dec_label_pc_32e58
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_32eb8, label %dec_label_pc_32ea1

dec_label_pc_32eb8:                               ; preds = %dec_label_pc_32ea1
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  %7 = inttoptr i64 %5 to ptr
  %8 = call ptr @memset(ptr %7, i32 65, i32 99)
  %9 = add i64 %5, 99
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  store ptr %6, ptr %dataBuffer_-40, align 8
  call void @anon1(i64 %5)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_32f47, label %dec_label_pc_32f42

dec_label_pc_32f42:                               ; preds = %dec_label_pc_32eb8
  call void @__stack_chk_fail()
  br label %dec_label_pc_32f47

dec_label_pc_32f47:                               ; preds = %dec_label_pc_32f42, %dec_label_pc_32eb8
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3304f:
  %stack_var_-72 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %2 = call i32 @strlen(ptr %0)
  %3 = bitcast ptr %stack_var_-72 to ptr
  %4 = call ptr @strncpy(ptr nonnull %3, ptr %0, i32 %2)
  call void @printLine(ptr %0)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_330f3, label %dec_label_pc_330ee

dec_label_pc_330ee:                               ; preds = %dec_label_pc_3304f
  call void @__stack_chk_fail()
  br label %dec_label_pc_330f3

dec_label_pc_330f3:                               ; preds = %dec_label_pc_330ee, %dec_label_pc_3304f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

